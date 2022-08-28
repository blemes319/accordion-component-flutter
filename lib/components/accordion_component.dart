import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  String? content, title;
  late bool showContent;
  Color? color;

  Accordion({this.showContent = false, this.content, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    print(showContent);
    return Container(
      color: color,
      width: 150,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${title}',
            style: TextStyle(fontSize: 16),
          ),
          Visibility(
            visible: showContent,
            child: Text(
              '${content}',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
