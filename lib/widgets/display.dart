import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final String text;
  const DisplayWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                maxLines: 1,
                maxFontSize: 80,
                minFontSize: 20,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
