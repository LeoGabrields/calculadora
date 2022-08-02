import 'package:calculadora/widgets/button.dart';
import 'package:calculadora/widgets/button_row.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final void Function(String) cb;

  const KeyboardWidget({Key? key, required this.cb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(text: 'AC', cb: cb, color: ButtonWidget.dark),
              ButtonWidget(text: '%', cb: cb, color: ButtonWidget.dark),
              ButtonWidget.operation(text: '/', cb: cb),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '7', cb: cb),
              ButtonWidget(text: '8', cb: cb),
              ButtonWidget(text: '9', cb: cb),
              ButtonWidget.operation(text: 'x', cb: cb),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '4', cb: cb),
              ButtonWidget(text: '5', cb: cb),
              ButtonWidget(text: '6', cb: cb),
              ButtonWidget.operation(text: '-', cb: cb),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(text: '3', cb: cb),
              ButtonWidget(text: '2', cb: cb),
              ButtonWidget(text: '1', cb: cb),
              ButtonWidget.operation(text: '+', cb: cb),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(text: '0', cb: cb),
              ButtonWidget(text: '.', cb: cb),
              ButtonWidget.operation(text: '=', cb: cb),
            ],
          ),
        ],
      ),
    );
  }
}
