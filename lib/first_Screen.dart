// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable

import 'package:flutter_application_3/Secand_Screen.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'Widgets/first__screen__button.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int weigth = 50;
  int height = 160;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff0d0b20),
          // App Bar
          appBar: AppBar(
            backgroundColor: Color(0xff080b21),
            title: Text("BMI Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            leading: Icon(
              Icons.local_pizza,
              color: Color(0xfff4bd6e),
            ),
          ),

          // Body
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // male and femlae
                First_Screen_Gender(),

                // Heigth
                // First_Screen_Heigth(),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff1e1e32),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Heigth",
                          style:
                              TextStyle(color: Color(0xffe4e9ec), fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 40,
                                  color: Color(0xffe4e9ec)),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffe4e9ec)),
                            ),
                          ],
                        ),
                        Slider(
                            activeColor: Color(0xffeb1b5a),
                            inactiveColor: Color(0xff424357),
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                            min: 120,
                            max: 220)
                      ],
                    ),
                  ),
                )),

                // Age and weight
                // First_Screen_AgeAndWiegth(),
                Expanded(
                    child: Row(
                  children: [
                    // Age
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff1e1e32),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Color(0xffe4e9ec),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Color(0xffe4e9ec),
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4e4e5e),
                                    focusColor:
                                        const Color.fromARGB(255, 9, 7, 4),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                IconButton.filled(
                                    style: IconButton.styleFrom(
                                      backgroundColor: Color(0xff4e4e5e),
                                      focusColor:
                                          const Color.fromARGB(255, 9, 7, 4),
                                    ),
                                    color: Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    icon: Icon(Icons.add))
                              ])
                        ],
                      ),
                    )),
                    SizedBox(width: 10),

                    // Wiegth
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff1e1e32),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Weigth",
                                    style: TextStyle(
                                      color: Color(0xffe4e9ec),
                                      fontSize: 15,
                                    )),
                                Text(weigth.toString(),
                                    style: TextStyle(
                                        color: Color(0xffe4e9ec),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton.filled(
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xff4e4e5e),
                                          focusColor: const Color.fromARGB(
                                              255, 9, 7, 4),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            weigth--;
                                          });
                                        },
                                        icon: Icon(Icons.remove),
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      IconButton.filled(
                                          style: IconButton.styleFrom(
                                            backgroundColor: Color(0xff4e4e5e),
                                            focusColor: const Color.fromARGB(
                                                255, 9, 7, 4),
                                          ),
                                          color: Colors.white,
                                          onPressed: () {
                                            setState(() {
                                              weigth++;
                                            });
                                          },
                                          icon: Icon(Icons.add))
                                    ])
                              ],
                            )))
                  ],
                )),

                // Button
                First_Screen_Button(
                  "Calculate",
                  // bmi = weight (km) / height ^ 2 ()
                  onpressed: () {
                    double hin = height / 100;
                    double result = weigth / (hin * hin);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecandScreen(
                              res: result,
                            )));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class First_Screen_Gender extends StatefulWidget {
  First_Screen_Gender({
    super.key,
  });

  @override
  State<First_Screen_Gender> createState() => _First_Screen_GenderState();
}

class _First_Screen_GenderState extends State<First_Screen_Gender> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        // male
        Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              isMale = true;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: (isMale) ? Color(0xffeb1b5a) : Color(0xff1e1e32),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.male,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text("Male",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        )),

        SizedBox(width: 10),
        // female
        Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              isMale = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: (isMale) ? Color(0xff1e1e32) : Color(0xffeb1b5a),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.female,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(height: 5),
                  Text("Female",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        )),
      ],
    ));
  }
}

// class First_Screen_AgeAndWiegth extends StatefulWidget {
//   First_Screen_AgeAndWiegth({
//     super.key,
//     // this.age,
//   });

//   @override
//   State<First_Screen_AgeAndWiegth> createState() =>
//       _First_Screen_AgeAndWiegthState();
// }

// class _First_Screen_AgeAndWiegthState extends State<First_Screen_AgeAndWiegth> {
//   int age = 20;
//   int weigth = 50;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Row(
//       children: [
//         // Age
//         Expanded(
//             child: Container(
//           margin: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Color(0xff1e1e32),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Age",
//                 style: TextStyle(
//                   color: Color(0xffe4e9ec),
//                   fontSize: 15,
//                 ),
//               ),
//               Text(
//                 age.toString(),
//                 style: TextStyle(
//                     color: Color(0xffe4e9ec),
//                     fontSize: 40,
//                     fontWeight: FontWeight.w600),
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                 IconButton.filled(
//                   style: IconButton.styleFrom(
//                     backgroundColor: Color(0xff4e4e5e),
//                     focusColor: const Color.fromARGB(255, 9, 7, 4),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       age--;
//                     });
//                   },
//                   icon: Icon(Icons.remove),
//                   color: Colors.white,
//                 ),
//                 SizedBox(width: 5),
//                 IconButton.filled(
//                     style: IconButton.styleFrom(
//                       backgroundColor: Color(0xff4e4e5e),
//                       focusColor: const Color.fromARGB(255, 9, 7, 4),
//                     ),
//                     color: Colors.white,
//                     onPressed: () {
//                       setState(() {
//                         age++;
//                       });
//                     },
//                     icon: Icon(Icons.add))
//               ])
//             ],
//           ),
//         )),
//         SizedBox(width: 10),

//         // Wiegth
//         Expanded(
//             child: Container(
//                 margin: EdgeInsets.all(5),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xff1e1e32),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Weigth",
//                         style: TextStyle(
//                           color: Color(0xffe4e9ec),
//                           fontSize: 15,
//                         )),
//                     Text(weigth.toString(),
//                         style: TextStyle(
//                             color: Color(0xffe4e9ec),
//                             fontSize: 40,
//                             fontWeight: FontWeight.w600)),
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                       IconButton.filled(
//                         style: IconButton.styleFrom(
//                           backgroundColor: Color(0xff4e4e5e),
//                           focusColor: const Color.fromARGB(255, 9, 7, 4),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             weigth--;
//                           });
//                         },
//                         icon: Icon(Icons.remove),
//                         color: Colors.white,
//                       ),
//                       SizedBox(width: 5),
//                       IconButton.filled(
//                           style: IconButton.styleFrom(
//                             backgroundColor: Color(0xff4e4e5e),
//                             focusColor: const Color.fromARGB(255, 9, 7, 4),
//                           ),
//                           color: Colors.white,
//                           onPressed: () {
//                             setState(() {
//                               weigth++;
//                             });
//                           },
//                           icon: Icon(Icons.add))
//                     ])
//                   ],
//                 )))
//       ],
//     ));
//   }
// }

// class First_Screen_Heigth extends StatefulWidget {
//   First_Screen_Heigth({
//     super.key,
//   });

//   @override
//   State<First_Screen_Heigth> createState() => First_Screen_HeigthState();
// }

// class First_Screen_HeigthState extends State<First_Screen_Heigth> {
//   int heigth = 160;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Container(
//       margin: EdgeInsets.symmetric(vertical: 5),
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Color(0xff1e1e32), borderRadius: BorderRadius.circular(10)),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Heigth",
//               style: TextStyle(color: Color(0xffe4e9ec), fontSize: 15),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               textBaseline: TextBaseline.alphabetic,
//               children: [
//                 Text(
//                   heigth.toString(),
//                   style: TextStyle(
//                       fontWeight: FontWeight.w900,
//                       fontSize: 40,
//                       color: Color(0xffe4e9ec)),
//                 ),
//                 Text(
//                   "cm",
//                   style: TextStyle(fontSize: 15, color: Color(0xffe4e9ec)),
//                 ),
//               ],
//             ),
//             Slider(
//                 activeColor: Color(0xffeb1b5a),
//                 inactiveColor: Color(0xff424357),
//                 value: heigth.toDouble(),
//                 onChanged: (value) {
//                   setState(() {
//                     heigth = value.toInt();
//                   });
//                 },
//                 min: 120,
//                 max: 220)
//           ],
//         ),
//       ),
//     ));
//   }
// }
