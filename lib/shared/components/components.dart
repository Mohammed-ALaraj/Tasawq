import 'package:flutter/material.dart';

Widget butt({
  required String? t,
  double wid = 40,
  double hei = 40,
  required Function function,
  required Icon ic,
}) =>
    Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(50)),
      height: hei,
      width: wid,
      child: IconButton(
        onPressed: () => function,
        icon: ic,
      ),
    );

Widget TextIn({
  required  TextEditingController controller,
  required String label,
  required String hint,
  required Icon Pic,
  IconButton? Sic,
  required TextInputType type,
  required String validat,
  bool isScure = false

}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      cursorColor: Colors.blue,
      obscureText: isScure,

      validator: (value) {
        if (value!.isEmpty) {
          return validat;
        }
        return null;
      },
      onFieldSubmitted: (String value) {
        print(value);
      },
      onChanged: (String value) {
        print(value);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon:Pic,
        suffixIcon: Sic,
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        hintText: hint,
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
      ),
    );
