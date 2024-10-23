import 'package:flutter/material.dart';

class CustomerMyTalkScreen extends StatefulWidget {
  static const String rootName = "/customer_my_talk_screen";

  const CustomerMyTalkScreen({super.key});

  @override
  State<CustomerMyTalkScreen> createState() => _CustomerMyTalkScreenState();
}

class _CustomerMyTalkScreenState extends State<CustomerMyTalkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("My Talk Screen")],
      ),
    );
  }
}
