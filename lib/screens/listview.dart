import 'package:flutter/material.dart';



class Listviews extends StatefulWidget {
  const Listviews({super.key});

  @override
  State<Listviews> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listviews> {
  final ScrollController _scrollController = ScrollController();



  final List<String> list_datas = [
    "list data 1",
    "list data 12",
    "list data 13",
    "list data 14",
    "list data 15",
    "list data 16",
    "list data 17",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listview'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),  
      body: Center(
        child: ListView.builder(controller: _scrollController,
        itemCount: list_datas.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return TextButton(
            
            onPressed: (){
              Navigator.pushNamed(context, 
              arguments: list_datas[index],
              '/details');
            },
            style: ButtonStyle(
              iconColor: WidgetStatePropertyAll(Colors.black),
              backgroundColor:  WidgetStatePropertyAll(Colors.black),
              foregroundColor:  WidgetStatePropertyAll(Colors.white),
            ),
             child: Text(
              list_datas[index],
             ),
             );
          },
          ),
      ),
    );
  }
}