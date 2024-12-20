import 'package:flutter/material.dart';

import 'list_screen.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Screen')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: studentIdController,
              decoration: InputDecoration(labelText: "Student ID"),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListScreen(
                  data: [
                    {
                      'studentId': studentIdController.text,
                      'name': nameController.text,
                    }
                  ],
                )));
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
