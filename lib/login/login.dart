
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thedetector/login/regestration.dart';
import 'package:thedetector/login/rest_password.dart';
import 'package:thedetector/modules/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => login_1();
}

class login_1 extends State<login> {
  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();
  bool found = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.center ,//Center Column contents vertically,
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'image.jpeg',
            width: 150,
            height: 150,
          ),
          Text(""),
          Text("Username or Email Address", textAlign: TextAlign.center),
          Text(""),
          TextField(
              controller: n1,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide()),
                prefixIcon: Icon(Icons.account_circle),
              )),
          Text(""),
          Text("Password", textAlign: TextAlign.center),
          Text(""),
          TextField(
              controller: n2,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide()),
                prefixIcon: Icon(Icons.lock),
              )),
          Text(""),
          Text(""),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {
                    final userRef =
                        FirebaseFirestore.instance.collection('data');
                    userRef.get().then((QuerySnapshot snapshot) {
                      for (int index = 0; index < snapshot.size; index++) {
                        if (snapshot.docs[index]['email'] == n1.text ||
                            snapshot.docs[index]['username'] == n1.text) {
                          if (snapshot.docs[index]['password'] == n2.text) {
                            found = true;
                            break;
                          }
                        }
                      }
                      if (found == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homescreen()));
                        setState(() {
                          n1.text = '';
                          n2.text = '';
                          found = false;
                        });
                      } else {
                        const snackBar = SnackBar(
                          content: Text(
                              'Incorrect Account !! Try Again or Create New Account'),
                          backgroundColor: Colors.red,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    });
                  },
                  child: Text(
                    "Log in ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text("     "),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27.0),
                ),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
                child: Text("Register Now "),
              ),
            ],
          ),
          Text(""),
          Text(""),
          TextButton(
            child: Text(
              'Lost Your Password?',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => resr_password()));
            },
          ),
        ],
      ),
    ));
  }
} /* */
