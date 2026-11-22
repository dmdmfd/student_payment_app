import 'package:flutter/material.dart';

class StudentDetailsPage extends StatelessWidget {
  final TextEditingController studentNumberController =
  TextEditingController();
  final TextEditingController courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Student Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, $username 👋",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              controller: studentNumberController,
              decoration: InputDecoration(labelText: "Student Number"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: courseController,
              decoration: InputDecoration(labelText: "Course"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Proceed to Payment"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/payment',
                  arguments: {
                    'username': username,
                    'studentNumber': studentNumberController.text,
                    'course': courseController.text,
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
