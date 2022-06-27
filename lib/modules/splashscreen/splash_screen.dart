
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thedetector/login/login.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }


  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }
  Widget initWidget(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image.jpeg',
              width: 300,height: 300,),
            SizedBox(height: 25,),
            Text('Cancer Scanner',style: TextStyle(
              color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 40,

            ),)

          ],)

        )

    );
  }
}