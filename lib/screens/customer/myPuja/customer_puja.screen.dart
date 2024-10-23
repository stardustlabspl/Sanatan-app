import 'package:flutter/material.dart';

class CustomerPujaScreen extends StatefulWidget {
  static const String rootName = "/customer_my_puja_screen";

  const CustomerPujaScreen({super.key});

  @override
  State<CustomerPujaScreen> createState() => _CustomerPujaScreenState();
}

class _CustomerPujaScreenState extends State<CustomerPujaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Puja")],
      ),
    );
  }
}
