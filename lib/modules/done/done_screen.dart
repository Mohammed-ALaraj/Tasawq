import 'package:flutter/material.dart';

class DoneTasksScreen extends StatefulWidget {
  const DoneTasksScreen({Key? key}) : super(key: key);

  @override
  State<DoneTasksScreen> createState() => _DoneTasksScreenState();
}

class _DoneTasksScreenState extends State<DoneTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Done Tasks",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
