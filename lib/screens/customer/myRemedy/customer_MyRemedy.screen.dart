import 'package:flutter/material.dart';

class CustomerMyRemedyScreen extends StatefulWidget {
  static const String rootName = "/customer_my_remedy_screen";

  const CustomerMyRemedyScreen({super.key});

  @override
  State<CustomerMyRemedyScreen> createState() => _CustomerMyRemedyScreenState();
}

class _CustomerMyRemedyScreenState extends State<CustomerMyRemedyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("My Remedy")],
      ),
    );
  }
}
