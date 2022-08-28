import 'package:flutter/material.dart';

class IconButtonAccordion extends StatelessWidget {
  int? id;

  IconButtonAccordion({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add),
      color: Colors.white,
    );
  }
}
