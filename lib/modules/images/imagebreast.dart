import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../resultimagebreast.dart';
import 'homeimage.dart';

class imagebreast extends StatefulWidget {
  const imagebreast({Key? key}) : super(key: key);

  @override
  State<imagebreast> createState() => _imagebreastState();
}

class _imagebreastState extends State<imagebreast> {
  File? _file;

  void pickergallary() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myfile!.path);
    });
  }

  void pickercamera() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      _file = File(myfile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Image Breast'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 280,
              height: 35,
              child: FlatButton(
                  child: const Text(
                    'upload image from gallary',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  color: const Color(0Xff0D47A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: pickergallary),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 280,
              height: 35,
              child: FlatButton(
                  child: const Text(
                    'upload image from camera',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  color: const Color(0Xff0D47A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: pickercamera),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Center(
                    child: _file == null
                        ? const Text(
                            'Image Not Select',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          )
                        : Column(
                            children: [
                              Image.file(
                                _file!,
                                height: 350,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: FlatButton(
                                  child: const Text(
                                    'Predict',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                  color: const Color(0Xff0D47A1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>  resultimagebreast()));
                                  },
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
