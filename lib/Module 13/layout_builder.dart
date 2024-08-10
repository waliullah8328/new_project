import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LayOut Builder"),),
      body: LayoutBuilder(builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;
        if(width<= 600){
          return Text("It's mobile Screen");
        }
        else if(width> 600 && width<1200){
          return Text("It's Tab Screen");
        }
        else{
          return Text("It's Website and DeskTop");
}
     }),
    );
  }
}
