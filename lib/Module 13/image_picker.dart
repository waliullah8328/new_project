import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ImagePickerScreen"),),
        body: ListView(
          children: [
            ElevatedButton(onPressed: () async {
             await  ImagePicker().pickImage(source: ImageSource.gallery);

            }, child: Text("Text Image from gallay")),
            SizedBox(height: 80,),
            ElevatedButton(onPressed: () async {
              await  ImagePicker().pickImage(source: ImageSource.camera);

            }, child: Text("Text Image from camera")),
          ],
        )
    );
  }
}
