import 'package:flutter/material.dart';

class CustomerFindScreen extends StatefulWidget {
  static const String rootName = "/customer_find_screen";

  const CustomerFindScreen({super.key});

  @override
  State<CustomerFindScreen> createState() => _CustomerFindScreenState();
}

class _CustomerFindScreenState extends State<CustomerFindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Find")],
      ),
    );
  }
}
