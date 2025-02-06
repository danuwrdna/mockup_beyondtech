import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({
    super.key,
    this.time,
    this.onTimerFinish,
    this.textStyle,
  });

  final DateTime? time;
  final Function()? onTimerFinish;
  final TextStyle? textStyle;

  @override
  State<CountdownWidget> createState() => CountdownWidgetState();
}

class CountdownWidgetState extends State<CountdownWidget> {
  Timer? _timer;
  String remainingTime = "";

  @override
  void initState() {
    startTimer(widget.time);
    super.initState();
  }

  void restartTimer(DateTime newEndTime) {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    startTimer(newEndTime);
  }

  void startTimer(DateTime? endTime) {
    if (endTime == null) return;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (endTime.isAfter(DateTime.now())) {
        var difference = endTime.toUtc().difference(DateTime.now()).toString();
        if (mounted) {
          setState(() {
            remainingTime = difference.substring(2, difference.length - 7);
          });
        }
      } else {
        setState(() {
          _timer!.cancel();
          remainingTime = "00:00";
        });
        if (widget.onTimerFinish != null) {
          widget.onTimerFinish!();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      remainingTime,
      style: widget.textStyle ??
          TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
