import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
    );
  }
}

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
