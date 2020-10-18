import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class CookingAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlareActor(
        "assets/animations/egg_cooking.flr",
        alignment: Alignment.topRight,
        fit: BoxFit.contain,
        isPaused: false,
        animation: 'start',
      ),
      // color: Colors.red,
      height: 500,
      width: 500,
    );
  }
}
