import 'package:flutter/material.dart';
import 'package:perfect_eggs/components/Button.dart';
import 'package:perfect_eggs/pages/Home/Home.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    void goToHome() {
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
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/result.png",
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Estão prontos!!",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Retire os ovos do fogo.",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                width: double.infinity,
              ),
              Positioned(
                child: Container(
                  child: Button(
                    label: "Voltar",
                    onPressed: goToHome,
                  ),
                  width: width,
                ),
                bottom: 50,
                left: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
