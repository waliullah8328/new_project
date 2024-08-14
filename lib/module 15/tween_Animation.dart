import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin{
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    animation = Tween(begin: 300.0,end: 100.0).animate(animationController);
    animationController.addListener(() {

      setState(() {
        print(animation.value);

      });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tween Animation",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: Colors.blue,
          child: Image(image: AssetImage("asset/Football.jpg")),
        ),
      ),
    );
  }
}
