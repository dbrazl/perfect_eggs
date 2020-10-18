import 'dart:async';
import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/Home/Home.dart';
import 'package:perfect_eggs/pages/Result/Result.dart';
import '../../components/Button.dart';
import './components/CookingAnimation.dart';

class EggTimer extends StatefulWidget {
  int duration = 0;
  String time = "00:00";

  EggTimer({this.duration});

  @override
  _EggTimerState createState() => _EggTimerState();
}

class _EggTimerState extends State<EggTimer> {
  Timer timer;

  String formatTime(int minutes, int seconds) {
    String time = "";

    if (widget.duration <= 60) {
      return "$seconds";
    } else {
      if (minutes / 10 >= 1) {
        time = "$minutes";
      } else {
        time = "0$minutes";
      }

      time = time + ":";

      if (seconds / 10 >= 1) {
        time = time + "$seconds";
      } else {
        time = time + "0$seconds";
      }

      return time;
    }
  }

  void updateTime() {
    int minutes = (widget.duration / 60).floor();
    int seconds =
        widget.duration > 60 ? widget.duration - minutes * 60 : widget.duration;

    setState(() {
      widget.time = formatTime(minutes, seconds);
      widget.duration = widget.duration - 1;

      if (widget.duration < 0) {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Result(),
          ),
        );
      }
    });
  }

  _EggTimerState() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (Timer t) => updateTime(),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    void goToResult() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: CookingAnimation(),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.time,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 64,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Cozinhando",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
              ),
              Positioned(
                left: 0,
                bottom: 50,
                child: Container(
                  child: Button(label: "Cancelar", onPressed: goToResult),
                  width: width,
                ),
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
