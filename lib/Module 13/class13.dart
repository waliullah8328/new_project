import 'package:flutter/material.dart';

class Class13 extends StatelessWidget {
  const Class13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clip Oval"),backgroundColor: Colors.blue,),
      body: Column(
        children: [

          // Clip Oval
          ClipOval(child: Image(
            height: 400,
              width: 500,
              image: NetworkImage("https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg"))),
        ],
      ),
    );
  }
}
