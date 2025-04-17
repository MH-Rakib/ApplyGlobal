import 'package:flutter/material.dart';
import 'package:flutter_hello_world/models/country.dart';
import 'package:flutter_hello_world/screens/apply.dart';

class SelectSubjectScreen extends StatelessWidget {
  final Country country;

  SelectSubjectScreen({required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Subject")),
      body: ListView.builder(
        itemCount: country.subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(country.subjects[index]),
            onTap: () {
              // Redirect to Apply screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ApplyScreen(subject: country.subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
