import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/EggTimer/EggTimer.dart';

import '../../components/Button.dart';
import 'components/Logo.dart';

class Home extends StatelessWidget {
  static const MINUTE = 60;

  @override
  Widget build(BuildContext context) {
    void goToTimer(String type) {
      switch (type) {
        case 'Mole':
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EggTimer(
                duration: 5 * MINUTE,
              ),
            ),
          );
          break;

        case "Semi-Mole":
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EggTimer(
                duration: 8 * MINUTE,
              ),
            ),
          );
          break;

        case "Dura":
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EggTimer(
                duration: 10 * MINUTE,
              ),
            ),
          );
          break;

        default:
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/eggs.png",
                height: 200,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 30),
              Logo(),
              SizedBox(height: 50),
              Text(
                "Selecione o tipo de gema",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Button(
                label: "Mole",
                onPressed: () => goToTimer("Mole"),
              ),
              SizedBox(height: 20),
              Button(
                label: "Semi-mole",
                onPressed: () => goToTimer("Semi-Mole"),
              ),
              SizedBox(height: 20),
              Button(
                label: "Dura",
                onPressed: () => goToTimer("Dura"),
              ),
            ],
          ),
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
