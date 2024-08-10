import 'package:flutter/material.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orientation Builder"),),
      body: OrientationBuilder(builder:  (context, orientation) {
        if(orientation == Orientation.portrait){
          return ListView(
            children: [
              Image(image: NetworkImage("https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg")),
              SizedBox(height: 50,),
              Text("Leather Design"),
              
            ],
          );
        }
        else{
          return ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Image(image: NetworkImage("https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg")),
              SizedBox(width: 50,),
              Text("Leather Design"),
            ],

          );
        }
      },),
    );
  }
}
