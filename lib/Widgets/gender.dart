// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  Gender(
    this.gender,
    this.genderIcon, {
    super.key,
  });

  final IconData genderIcon;
  final String gender;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff1e1c31),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  genderIcon,
                  size: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Text(gender,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ));
  }
}
