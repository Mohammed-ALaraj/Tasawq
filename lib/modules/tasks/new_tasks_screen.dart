import 'package:flutter/material.dart';

class NewTasksScreen extends StatefulWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  State<NewTasksScreen> createState() => _NewTasksScreenState();
}

class _NewTasksScreenState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("New Tasks",
      style: TextStyle(
        fontSize: 30,
      fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}
