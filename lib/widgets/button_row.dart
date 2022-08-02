import 'package:calculadora/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  final List<ButtonWidget> buttons;
  const ButtonRowWidget({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll([const SizedBox(width: 1), b]);
          return list;
        }),
      ),
    );
  }
}
