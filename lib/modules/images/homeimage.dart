
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thedetector/modules/images/imagebreast.dart';
import 'package:thedetector/modules/images/imagelung.dart';

class homeimage extends StatefulWidget {
  const homeimage({Key? key}) : super(key: key);

  @override
  State<homeimage> createState() => _homeimageState();
}

class _homeimageState extends State<homeimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Images'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: FlatButton(
                  child: const Text(
                    'Image Lung Cancer',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>imagelung()));
                  },
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: FlatButton(
                  child: const Text(
                    'Image Breast Cancer',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => imagebreast()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
