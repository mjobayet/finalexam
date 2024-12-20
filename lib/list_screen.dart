import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<Map<String, String>> data;

  ListScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Screen')),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]['name']!),
            subtitle: Text(data[index]['studentId']!),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Logic to delete item
              },
            ),
          );
        },
      ),
    );
  }
}