import 'package:accordion_component_flutter/components/icon_button_component.dart';
import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  String? content, title;
  late bool active;
  Color? color;
  int id;

  Accordion(this.id,
      {this.active = false, this.content, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    print(active);
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: 500,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButtonAccordion(
              value: id,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${title}',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                    visible: active,
                    child: Expanded(
                      flex: 0,
                      child: Text(
                        '${content}',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ))
              ],
            ),
          ],
        ));
  }
}
