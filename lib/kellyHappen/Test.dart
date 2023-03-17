// import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Onpress(String i) {
    print("mmm $i");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton.extended(
              label: Text("Camera"),
              icon: Icon(Icons.add_a_photo_outlined),
              backgroundColor: Colors.red,
              autofocus: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              splashColor: Colors.blue,
              onPressed: () {},
            ),
            body: SafeArea(
              child: Column(
                children: [
                  //Header
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Kelly Happen
                        const Text(
                          "Kelly Happen",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        //Search Icon
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22))),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Interior designer
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text("Interior designer"),
                  ),

                  const SizedBox(height: 30),

                  //Category
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.red,
                      width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Popular"),
                          Text('Recommend'),
                          Text("New"),
                          Text("Older"),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () => Onpress("mon"),
                      icon: const Icon(Icons.add_a_photo_outlined)),

                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add_a_photo),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: Text("A"),
                  ),
                  OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.ac_unit),
                      label: Text("")),
                  OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurpleAccent),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(fontWeight: FontWeight.bold)),
                      elevation: MaterialStateProperty.all(10),
                      shadowColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                    ),
                    onPressed: () {},
                    child: Text("B"),
                    autofocus: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("C"),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add_box),
                      label: Text("Add"))
                ],
              ),
            ),
          ),
        ));
  }
}
