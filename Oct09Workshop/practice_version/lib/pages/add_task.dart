import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset(
              '', // What is the logo file path?
              height: 60,
              width: 310,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 241, 243, 244),
        ),
        body: Padding(
            padding: EdgeInsets.zero, // How do we add padding?
            child: Column(
                children: [
                  TextField(
                    controller: _taskController,
                    decoration: InputDecoration(
                      labelText: 'Task Name',
                      labelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 32, 33, 36)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 230, 230, 250),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 32, 33, 36), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 32, 33, 36), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 22.5, horizontal: 10),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to the first screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // What color to put here?
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(150, 50),
                      side: BorderSide(color: Color.fromARGB(255, 32, 33, 36), width: 2),
                    ),
                    child: Text(
                      'Add Task',
                      style: TextStyle(
                        color: Color.fromARGB(255, 32, 33, 36),
                        fontSize: 20,
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }
}