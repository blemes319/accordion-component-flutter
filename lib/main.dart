import 'package:flutter/material.dart';
import 'components/accordion_component.dart';
import 'context/context_accordion.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  ContextAccordionComponent contextAccordion = ContextAccordionComponent();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...contextAccordion.lista.map((list) {
              return Accordion(
                list['id'] as int,
                active: list['active'] as bool,
                content: list['content'] as String,
                title: list['title'] as String,
                color: list['color'],
              );
            }),
          ],
        )),
      ),
    );
  }
}
