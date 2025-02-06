import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/src/auth_register_check/views/sign_check_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class ErrorHandler {
  static ApiResponse<T> handleException<T>(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ApiResponse.error("Connection Timeout");
      case DioExceptionType.badResponse:
        if (error.response != null && error.response?.data != null) {
          try {
            final errorData = error.response?.data;
            if (error.response?.statusCode == 401 &&
                (errorData['message'] == 'invalid token' ||
                    errorData['message'].contains("bearer token not found"))) {
              SharedPreferencesService.removeLoginToken();
              // navigatorKey.currentState?.pushAndRemoveUntil(
              //   // MaterialPageRoute(
              //   //   builder: (context) {
              //   //     // return const SignCheckPage();
              //   //   },
              //   // ),
              //   (route) => false,
              // );
              return const ApiResponse.error(
                'Session end. Redirecting to login.',
              );
            }

            if (errorData is Map<String, dynamic>) {
              if (errorData.containsKey('error')) {
                if (kDebugMode) {
                  print(
                    "[${error.response?.statusCode ?? "-"}] ${errorData['error']}",
                  );
                }
                return ApiResponse.error(errorData['error']);
              } else if (errorData.containsKey('message')) {
                if (kDebugMode) {
                  print(
                    "[${error.response?.statusCode ?? "-"}] ${errorData['message']}",
                  );
                }
                return ApiResponse.error(errorData['message']);
              }
            } else if (errorData is String) {
              return ApiResponse.error(errorData);
            }
          } catch (e) {
            return const ApiResponse.error('An unknown error occurred.');
          }
        }
        return ApiResponse.error(
          "Received invalid status code: ${error.response?.statusCode}",
        );
      case DioExceptionType.cancel:
        return const ApiResponse.error("Request to API server was cancelled");
      case DioExceptionType.connectionError:
        return const ApiResponse.error(
          "Connection to API server failed due to internet connection",
        );
      case DioExceptionType.unknown:
      default:
        return const ApiResponse.error("Unexpected error occurred");
    }
  }
}
