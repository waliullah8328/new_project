import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowCollumScreen extends StatelessWidget {
  const RowCollumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Collumn",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("A",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("B",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("C",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("D",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("E",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("A",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("A",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("A",style: TextStyle(fontSize: 27,color: Colors.white),))),
          ),


        ],
      ),

    );
  }
}
