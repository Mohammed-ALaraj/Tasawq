import 'dart:async';
import 'dart:math';

import 'package:app2022/modules/result/Result.dart';
import 'package:app2022/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  initState() {
    super.initState();
  }

  var number = 1;
  double height = 180.0;
  int weight = 60;
  int age = 20;
  bool isMale = false;
  bool isFeMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            //First Part
            Expanded(
              child: Container(
                // padding: EdgeInsets.only(top: 20,right: 20,left: 40),
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    //MALE
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                            isFeMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale ? Colors.blue : Colors.black87,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/images/male.png"),
                                height: 100,
                                width: 100,
                              ),
                              Text(
                            "Male",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    //FEMALE
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFeMale = true;
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: isFeMale ? Colors.pink : Colors.black87,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/images/female.png"),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //Second Part
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //HEIGHT
                    const Text(
                      "HEIGHT",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //180cm
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    //SLIDER
                    Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.white60,
                      value: height,
                      min: 100,
                      max: 220,
                      thumbColor: Colors.pink,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                          // print("${height.round()}");
                        });
                      }
                    ),
                  ],
                ),
              ),
            ),

            //THIRD PART
            Expanded(
              child: Container(
                // padding: EdgeInsets.only(top: 20,right: 20,left: 40),
                margin: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    //WEIGHT
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //REMOVE
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (5 < weight) {
                                            weight--;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                ),

                                const SizedBox(
                                  width: 10.0,
                                ),

                                //ADD
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (weight < 220) {
                                            weight++;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    //AGE
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //AGE
                            const Text(
                              "AGE",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),

                            const SizedBox(
                              height: 5.0,
                            ),

                            //AGE VALUE
                            Text(
                              "$age",
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),

                            const SizedBox(
                              height: 5.0,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //REMOVE
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (1 < age) {
                                            age--;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                ),

                                const SizedBox(
                                  width: 10.0,
                                ),

                                //ADD
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 40,
                                  width: 40,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (age < 120) {
                                            age++;
                                          }
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //LAST PART
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink,
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 1,
              child: TextButton(
                onPressed: () {
                  double result = weight/pow(height/100,2);
                  print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Result(
                            age: age,
                            res: result,
                            isMale: isMale,
                          ),
                  ),
                  );
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            )
          ],
        ));
  }
}
