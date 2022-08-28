import 'package:accordion_component_flutter/context/context_accordion.dart';
import 'package:flutter/material.dart';

class IconButtonAccordion extends StatelessWidget {
  late int value;

  IconButtonAccordion({Key? key, this.value = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => change(value: value),
      icon: const Icon(Icons.add),
      color: Colors.white,
    );
  }
}
