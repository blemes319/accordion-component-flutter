import 'package:flutter/material.dart';
import 'components/accordion_component.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

List<Map<String, dynamic>> lista = [
  {
    'content': 'Blá blá blá blá blá blá blá blá ',
    'title': 'Teste do teste 1',
    'color': Color.fromARGB(0, 47, 35, 204).withOpacity(1),
    'active': false,
  },
  {
    'content': 'Blá blá blá blá blá blá blá blá ',
    'title': 'Teste do teste 2',
    'color': Color.fromARGB(0, 202, 124, 46).withOpacity(1),
    'active': true,
  },
  {
    'content':
        'Blá bláBlá blá blá blá blá blá blá bláBlá blá blá blá blá blá blá blá',
    'title': 'Teste do teste 3',
    'color': Color.fromARGB(0, 8, 123, 185).withOpacity(1),
    'active': true,
  },
  {
    'content': 'Blá blá blá blá blá blá blá blá ',
    'title': 'Teste do teste 4',
    'color': Color.fromARGB(0, 150, 7, 36).withOpacity(1),
    'active': false,
  }
];

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...lista.map((list) {
              return Accordion(
                showContent: list['active'] as bool,
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
