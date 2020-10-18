import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String label = "Botão";
  Function onPressed = () {};

  Button({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: FlatButton(
            padding: EdgeInsets.zero,
            child: Text(
              this.label,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            onPressed: this.onPressed,
          ),
          width: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      height: 50,
      width: double.infinity,
    );
  }
}
