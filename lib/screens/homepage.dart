import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text("hi"),
      ),
      body: Center(child: Text("welcome to home page"),),
    );
  }
}