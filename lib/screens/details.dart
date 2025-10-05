import 'package:flutter/material.dart';



class Details extends StatefulWidget {
  const Details({super.key, });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  
  
  @override
  Widget build(BuildContext context) {
    final String title = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
    );
  }
}