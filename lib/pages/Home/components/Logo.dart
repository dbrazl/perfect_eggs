import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "PERFECT",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 36,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
            text: ".eggs",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 36,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
