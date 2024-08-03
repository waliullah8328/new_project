import 'package:flutter/material.dart';

class ClassElevenScreen extends StatefulWidget {
  const ClassElevenScreen({super.key});

  @override
  State<ClassElevenScreen> createState() => _ClassElevenScreenState();
}

class _ClassElevenScreenState extends State<ClassElevenScreen> {

  List list = [
    "https://i.ibb.co/WtRMfJt/10-Online-Admission.webp",
    "https://i.ibb.co/HH78S1J/3-Pattern-Design-CAD.webp",
    "https://i.ibb.co/P407CHQ/2-Apparel-Merchandising.jpg",
    "https://i.ibb.co/KG2YnDF/5ef49e586d7185001d72ec96.jpg",
    "https://i.ibb.co/k2p3hDC/1-Fashion-Design.jpg",
    "https://i.ibb.co/2Wy2LRR/Fashion-Design-10-copy.jpg",
    "https://i.ibb.co/xsNfvNg/FAJ2387.jpg",
    "https://i.ibb.co/bLsDFW9/3.jpg",
    "https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    
    
    // List View Builder
    
    return SafeArea(
      child: Scaffold(
        body:
      
          Center(
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text: "Visit our website",style: TextStyle(color: Colors.black,fontSize: 30)),
                TextSpan(text: "  Click here",style: TextStyle(color: Colors.blue,fontSize: 30))
              ]
            )),
          ),
      
          // stack
        /*
        Stack(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
                height: 400,
                width: 250,
                color: Colors.yellow
      
            ),
            Container(
                height: 300,
                width: 200,
                color: Colors.orange
      
            ),
          ],
        )
            */
      
      
            // GridView.builder
         /* GridView.builder(
            itemCount: list.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(list[index],fit: BoxFit.fill,),
                );
              },)*/
      
      
          // Listview.separtor
        /*
        ListView.separated(
            itemBuilder: (context, index) {
              return Image.network(list[index]);
            },
            separatorBuilder: (context, index) {
              return Center(child: Text("Image"));
            },
            itemCount: list.length)
            */
      
        // listView.builder
       /* ListView.builder(
          itemCount: list.length,
        
          itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(list[index]),
                  const SizedBox(height: 10,),
        
                ],
              );
            },),*/
      
      ),
    );

    
   
    
  }
}
