import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabbar Widget"),
            bottom: const TabBar(
                tabs: [
              Tab(child: Icon(Icons.home),),
              Tab(child: Icon(Icons.search),),
              Tab(child: Icon(Icons.settings),),
            ]),
          ),
          body: const TabBarView(
              children: [
                Center(child: Text("Home Page")),
                Center(child: Text("Search Page ")),
                Center(child: Text("Setting Page ")),

              ]),
        ));
  }
}
