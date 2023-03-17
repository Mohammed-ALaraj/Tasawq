import 'package:flutter/material.dart';

class ArchiveTasksScreen extends StatefulWidget {
  const ArchiveTasksScreen({Key? key}) : super(key: key);

  @override
  State<ArchiveTasksScreen> createState() => _ArchiveTasksScreenState();
}

class _ArchiveTasksScreenState extends State<ArchiveTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Archive Tasks",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
