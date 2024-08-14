import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsBasedAnimation extends StatefulWidget {
  const PhysicsBasedAnimation({super.key});

  @override
  State<PhysicsBasedAnimation> createState() => _PhysicsBasedAnimationState();
}

class _PhysicsBasedAnimationState extends State<PhysicsBasedAnimation> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late SpringSimulation simulation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,lowerBound: 0,upperBound: double.infinity);
    simulation = SpringSimulation(SpringDescription(mass: 0.7, stiffness: 200, damping: 1), 0, 300,0);
    animationController.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Transform.translate(
                offset: Offset(150, animationController.value),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  
                  shape: BoxShape.circle
                ),
                child: Image(image: AssetImage("asset/Football.jpg")),
              ),
            );
          },
      ),
    );
  }
}
