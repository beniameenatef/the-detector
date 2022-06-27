import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thedetector/login/login.dart';

class Signin extends StatelessWidget {
  TextEditingController n1 = new TextEditingController();
  TextEditingController n2 = new TextEditingController();
  TextEditingController n3 = new TextEditingController();
  TextEditingController n4 = new TextEditingController();
  TextEditingController n5 = new TextEditingController();
  TextEditingController n6 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'New Member',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please enter all your information correctly , and if you are already a member please Login.',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: n1,
                decoration: new InputDecoration(
                  labelText: 'First Name',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: n2,
                decoration: new InputDecoration(
                  labelText: 'Last Name',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),

            SizedBox(
              height: 15,
            ),
            TextField(
              controller: n3,
                decoration: new InputDecoration(
                  labelText: 'Username',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: n4,
                decoration: new InputDecoration(
                  labelText: 'E-mail',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: n5,
                decoration: new InputDecoration(
                  labelText: 'Enter Password',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              controller: n6,
                decoration: new InputDecoration(
                  labelText: 'Confirm Password',
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide()),
                )
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text('<< Back to login                                                                    '),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => login()));
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27.0),
              ),
              color: Colors.lightBlue,
              child: FittedBox(
                  child: Text('Register',
                      style: TextStyle(fontSize: 15.0, color: Colors.black))),
              onPressed: (){
                if(n5.text==n6.text){
                  FirebaseFirestore.instance.collection('data').add(
                    <String,dynamic>
                    {
                      'firstname':n1.text,
                      'lastname':n2.text,
                      'username':n3.text,
                      'email':n4.text,
                      'password':n5.text,
                    },
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));

                }
                else{
                  const snackBar = SnackBar(
                    content: Text('wrong password !! Try again'),
                    backgroundColor: Colors.red,

                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
    ),

          ],
        ),
      ),
    );
  }
}
/*FirebaseFirestore.instance.collection('data').add(
                  <String, dynamic>{
                    'name': n1.text,
                    'phone': n2.text,
                    'email': n3.text,
                    'password': n4.text,*/