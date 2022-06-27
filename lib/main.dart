import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thedetector/modules/home.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
 // resultAPI().getResults();
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool check=false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homescreen(),
    );
  }
}

//home: homescreen(),