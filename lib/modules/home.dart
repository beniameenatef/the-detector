
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thedetector/login/login.dart';
import 'package:thedetector/modules/breast_cancer.dart';
import 'package:thedetector/modules/images/homeimage.dart';
import 'package:thedetector/modules/lungs_cancer.dart';

class homescreen extends StatefulWidget {
  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center( child: Text('The Detector       ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25),
      ),
      ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Column(children: [
                Container(height: 70,
                  child: Row(children: [Container(width: 15,
                      ),
                      const CircleAvatar(backgroundColor: Colors.brown, child: Text('C'),),
                      Container(width: 15,),
                      Column(children: [
                          Container(height: 20,),
                          const Text('The Detector', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold,),),],),
                      FlatButton(child: Row(children: [
                            const Icon(Icons.settings),],),
                        onPressed: () {},),],),),
                FlatButton(
                  child: Row(children: [const Icon(Icons.account_circle), Container(width: 10,),
                      const Text('Profile'),],),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: [
                      const Icon(Icons.help),
                      Container(
                        width: 10,
                      ),
                      const Text('Get help'),
                    ],
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline),
                      Container(
                        width: 10,
                      ),
                      const Text('About'),
                    ],
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: [
                      const Icon(Icons.logout_rounded),
                      Container(
                        width: 10,
                      ),
                      const Text('Log out'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'image.jpeg',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: FlatButton(
                      child: const Text(
                        'Lungs Cancer',
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const lungs_cancer()));
                      },
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: FlatButton(
                      child: const Text(
                        'Breast Cancer',
                        style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => brest_cancer()));
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: FlatButton(
                  child: const Text(
                    'Select Image',
                    style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homeimage()));
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
