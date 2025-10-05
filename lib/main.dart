import 'package:demo/screens/details.dart';
import 'package:demo/screens/homepage.dart';
import 'package:demo/screens/listview.dart';
import 'package:demo/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:demo/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro': (context) => Homepage(),
        '/home': (context) => HomeScren(),
        '/signup': (context) => Signup(),
        '/login': (context) => Signin(),
        '/listview': (context) => Listviews(),
        '/details': (context) => Details(),
      },
      home: Homepage(),
    );
  }
}


class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("User Name"),
          elevation: 20,
          centerTitle: true,
          leading: ClipRect(

              child: Image.asset(
                "assets/logo.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.sizeOf(context).width * 0.1,
                
              ),
            ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,size: MediaQuery.sizeOf(context).height * 0.04,))
          ],
        ),
        body: ListView(
        children: [
          TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
              horizontal: 30,
            ),
            ),
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/signup');
          }, child: Text('go to signup page'),
          ),
          TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
              horizontal: 30,
            ),
            ),
          ),
          onPressed: (){
             Navigator.pushNamed(context, '/login');
          }, child: Text('go to login page'),
          ),
          TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
              horizontal: 30,
            ),
            ),
          ),
          onPressed: (){
             Navigator.pushNamed(context, '/listview');
          }, child: Text('go to listview page'),
          ),
        ],
        ),
      );
  }
}
