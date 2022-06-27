import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController n1 = new TextEditingController();

class resr_password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Text(
                    '  Reset Password',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                ' Enter the email address associaited with your account.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: n1,
                  decoration: new InputDecoration(
                    labelText: 'E-mail',
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 350,
                child: FlatButton(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
