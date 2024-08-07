import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isClick = false;
  Color white = Colors.white;
  Color black = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isClick?black:white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Switch Screen",
        style: TextStyle(color: isClick? black:black),),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("White",style: TextStyle(color: isClick? white:black),),
              Switch(
                  value: isClick,
                  onChanged: (onChanged){
                    setState(() {
                      isClick = onChanged;
                    });

              }),
              Text("Black",style: TextStyle(color: isClick? white:black),),
            ],
          ),

          InkWell(
            onTap: () {
              debugPrint("Click tapped");
            },
              onLongPress: (){
                debugPrint("Click tapped longPress");
              },
              child: Text("Click")),

          const CircularProgressIndicator(),
          const SizedBox(height: 40,),
          const LinearProgressIndicator(),
          const SizedBox(height: 40,),
          const RotatedBox(
              quarterTurns: 4,
            child: Text("Hello World"),
          ),
        ],
      ),
    );
  }
}
