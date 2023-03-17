import 'package:app2022/modules/archive/archive_screen.dart';
import 'package:app2022/modules/done/done_screen.dart';
import 'package:app2022/modules/tasks/new_tasks_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 1;
  List<Widget> screen = [
    DoneTasksScreen(),
    NewTasksScreen(),
    ArchiveTasksScreen()
  ];

  List<String> title = [
    "Done",
    "New",
    "Archive"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
      ),

      body: screen[currentIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.check_circle), label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "archive"),
        ],
      ),
    );
  }
}
