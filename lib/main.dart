import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/details_page.dart';
import 'pages/payment_page.dart';

void main() {
  runApp(StudentPaymentApp());
}

class StudentPaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Payment Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/details': (context) => StudentDetailsPage(),
        '/payment': (context) => PaymentPage(),
      },
    );
  }
}
