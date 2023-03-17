


import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const BMIResult({Key? key}) : super(key: key);

   double? res;
   bool? isMale;
   int? age;

   Result({
    required this.res,
     required this.age,
     required this.isMale
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BMI_Result"),
      ),

      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(100),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text("Gender: ${isMale!?"Male":"Female"} "),
            Text("Age: $age"),
            Text("Result: ${res!.round()}"),
          ],
        ),
      ),
    );
  }
}
