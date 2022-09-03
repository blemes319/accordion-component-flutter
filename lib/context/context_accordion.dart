import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ContextAccordionComponent {
  var listaDinamic;

  ContextAccordionComponent() {
    listaDinamic = Observable(lista);
  }

  List<Map<String, dynamic>> lista = [
    {
      'id': 1,
      'content': 'Blá blá blá blá blá blá blá blá ',
      'title': 'Teste do teste 1',
      'color': Color.fromARGB(0, 47, 35, 204).withOpacity(1),
      'active': false,
    },
    {
      'id': 2,
      'content': 'Blá blá blá blá blá blá blá blá ',
      'title': 'Teste do teste 2',
      'color': Color.fromARGB(0, 202, 124, 46).withOpacity(1),
      'active': true,
    },
    {
      'id': 3,
      'content':
          'Blá bláBlá blá blá blá blá blá blá bláBlá blá blá blá blá blá blá blá',
      'title': 'Teste do teste 3',
      'color': Color.fromARGB(0, 8, 123, 185).withOpacity(1),
      'active': true,
    },
    {
      'id': 4,
      'content': 'Blá blá blá blá blá blá blá blá ',
      'title': 'Teste do teste 4',
      'color': Color.fromARGB(0, 150, 7, 36).withOpacity(1),
      'active': false,
    }
  ];

  change({int value = 0}) {
    return listaDinamic.map((acc) {
      if (acc['id'] == value) {
        acc['active'] = acc['active']!;
        return acc;
      } else {
        return acc;
      }
    });
  }

  newListGenerator(int value) {
    listaDinamic = change(value: value);
    print(listaDinamic);
    return listaDinamic;
  }
}
