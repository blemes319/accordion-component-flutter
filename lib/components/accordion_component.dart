import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  String? content, title;
  late bool showContent;

  Accordion({this.showContent = false, this.content, this.title});

  @override
  Widget build(BuildContext context) {
    print(showContent);
    return Container(
      width: 150,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${title}'),
          Visibility(
            visible: showContent,
            child: Text('${content}'),
          )
        ],
      ),
    );
  }
}
