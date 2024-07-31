import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Network Image"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.red,
            ),

          ],),
        ),

        // Button
        /*Column(
          children: [
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){

            }, child: Text("Elevated Button",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),)),
            TextButton(onPressed: (){

            }
                , child: Text("TextButton",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),)),




          ],
        ),*/
      
      
        /* Column(
          children: [
      
      
            //SizedBox(height: 30,),
            //Text("Floating action button",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
            //SizedBox(height: 30,),
            //Text("Floating action button",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
            //SizedBox(height: 30,),
      
            // Icon Widget
           /* Icon(
                Icons.person,
              size: 80,
              color: Colors.blue,
            ),*/
      
            // Button
      
      
      
      
      
          ],
        ),*/
        // Image.network("https://i.ibb.co/k2p3hDC/1-Fashion-Design.jpg",height: 200,width: 200,),
        //Image.asset("asset/Football.jpg",height: 200,width: 200,),
       /* Card(
          shadowColor: Colors.blue,
          elevation: 100,
      
          child: Image.asset("asset/Football.jpg",height: 200,width: 200,),
        ),*/
        /*
        const Center(child: CircleAvatar(
          minRadius: 70,
          maxRadius: 90,
          backgroundImage: NetworkImage("https://i.ibb.co/k2p3hDC/1-Fashion-Design.jpg")),
      
      )*/
        // Floating Action Button
          /*
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
            onPressed: (){
      
            },
          child: Text("+",style: TextStyle(fontSize: 40),),
        ),
        */
      
      ),
    );
  }
}
