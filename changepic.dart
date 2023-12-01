import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:async';

class changepic extends StatefulWidget {
  const changepic({super.key});

  @override
  State<changepic> createState() => _changepicState();
}

class _changepicState extends State<changepic> {
  Uint8List? _image;
  File? selectedimage;

  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Change profile pic "),
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.black),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: b * 0.22,
          ),
          InkWell(
            child: Container(
              child: Column(children: [
                _image != null
                    ? CircleAvatar(
                        radius: a * 0.33,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : IconButton(
                        onPressed: () {
                          showimagepickeroption(context);
                        },
                        icon: Icon(Icons.add_a_photo),
                      ),
                Text("change profile pic")
              ]),
            ),
          ),
        ]),
      ),
    );
  }

  void showimagepickeroption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      IconButton(
                          onPressed: () {
                            _pickImageFromGallery();
                          },
                          icon: Icon(Icons.image)),
                      Text("gallery")
                    ]),
                    Column(children: [
                      IconButton(
                          onPressed: () {
                            _pickImageFromcamera();
                          },
                          icon: Icon(Icons.camera_alt_sharp)),
                      Text("camera")
                    ]),
                  ],
                ),
              ));
        });
  }

  Future _pickImageFromGallery() async {
    final returnimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnimage == null) return;
    setState(() {
      selectedimage = File(returnimage.path);
      _image = File(returnimage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future _pickImageFromcamera() async {
    final returnimage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnimage == null) return;
    setState(() {
      selectedimage = File(returnimage.path);
      _image = File(returnimage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}
