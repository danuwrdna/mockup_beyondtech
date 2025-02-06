import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  const BulletList({super.key, required this.texts});

  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // add list item
      widgetList.add(UnorderedListItem(text: text));
      // add space between items
      widgetList.add(const SizedBox(height: 15.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(text, textAlign: TextAlign.justify),
        )
      ],
    );
  }
}