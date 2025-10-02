import 'package:flutter/material.dart';



class InputAcceptor extends StatelessWidget {
  final String label;
   
  const InputAcceptor({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          fillColor: Colors.white
        ),
      ),
    );
  }
}