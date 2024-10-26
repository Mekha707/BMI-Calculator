// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Widgets/first__screen__button.dart';

import 'first_Screen.dart';

class SecandScreen extends StatelessWidget {
  const SecandScreen({super.key , required this.res});
  final double res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0d0b20),
        appBar: AppBar(
          backgroundColor: Color(0xff0d0b20),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
        // Body
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // Text
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Your Result",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ],
                  )),

              // Result
              Expanded(
                flex: 4,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff1e1e32),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Normal",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            res.toStringAsFixed(2),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Your body weigth is normal ,Good Job",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    )),
              ),

              // Button
              Expanded(
                flex: 1,
                child: First_Screen_Button("Recalculate", onpressed: () {}),
              ),
            ],
          ),
        ));
  }
}
