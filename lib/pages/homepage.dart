import 'package:flutter/material.dart';

import 'package:gdg/components/task.dart';
import 'package:gdg/pages/add_task.dart';

class HomePage extends StatefulWidget  {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tasks = [
    ['Mobile dev workshop', false],
    ['Social event', false],
  ];

  List colors = [
    [Color.fromARGB(255, 66, 103, 210), Color.fromARGB(255, 210, 227, 252)],
    [Color.fromARGB(255, 234, 67, 53), Color.fromARGB(255, 250, 210, 207)],
    [Color.fromARGB(255, 251, 188, 4), Color.fromARGB(255, 254, 239, 195)],
    [Color.fromARGB(255, 52, 168, 83), Color.fromARGB(255, 206, 234, 214)],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }

  void taskDeleted(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 55),
            Image.asset(
              'assets/gdg_logo.png',
              height: 60,
              width: 310,
            ),
          ]
        ),
        backgroundColor: Color.fromARGB(255, 241, 243, 244),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, index) {
              return Task(
                taskName: tasks[index][0],
                taskStatus: tasks[index][1],
                borderColor: colors[index % 4][0],
                backgroundColor: colors[index % 4][1],
                onChanged: (value) => checkBoxChanged(index),
                onDeleted: () => taskDeleted(index),
              );
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTask()),
          ).then((newTask) {
            if (newTask != null) {
              setState(() {
                tasks.add([newTask, false]);
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}