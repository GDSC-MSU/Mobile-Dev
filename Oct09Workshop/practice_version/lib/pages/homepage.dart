import 'package:flutter/material.dart';

import '../components/task.dart';
import 'add_task.dart';

class HomePage extends StatefulWidget  {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tasks = [
    // Fill in some initial data
  ];

  List colors = [
    [Color.fromARGB(255, 66, 103, 210), Color.fromARGB(255, 210, 227, 252)],
    [Color.fromARGB(255, 234, 67, 53), Color.fromARGB(255, 250, 210, 207)],
    [Color.fromARGB(255, 251, 188, 4), Color.fromARGB(255, 254, 239, 195)],
    [Color.fromARGB(255, 52, 168, 83), Color.fromARGB(255, 206, 234, 214)],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      // Change check box state
    });
  }

  void taskDeleted(int index) {
    setState(() {
      // Remove task
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/gdg_logo.png',
            height: 60,
            width: 310,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 241, 243, 244),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                // Tasks
              );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the next screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}