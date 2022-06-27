import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thedetector/bloc/cubit.dart';
import 'package:thedetector/model/putmodeldata.dart';
import '../bloc/state.dart';
import '../model/putimagelungmodel.dart';
import 'lungresultscreen.dart';
class lungs_cancer extends StatefulWidget {
  const lungs_cancer({Key? key}) : super(key: key);

  @override
  _lungs_cancerState createState() => _lungs_cancerState();
}

class _lungs_cancerState extends State<lungs_cancer> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  TextEditingController n3 = TextEditingController();
  TextEditingController n4 = TextEditingController();
  TextEditingController n5 = TextEditingController();
  TextEditingController n6 = TextEditingController();
  TextEditingController n7 = TextEditingController();
  TextEditingController n8 = TextEditingController();
  TextEditingController n9 = TextEditingController();
  TextEditingController n10 = TextEditingController();
  TextEditingController n11 = TextEditingController();
  TextEditingController n12 = TextEditingController();
  TextEditingController n13 = TextEditingController();
  TextEditingController n14 = TextEditingController();
  TextEditingController n15 = TextEditingController();

  TextEditingController imagelungcontroller = TextEditingController();
  var picker =ImagePicker();
  File? image;
  int id=1;
  dynamic  x;
  late Future<putlungdata?> data;
  late Future<putimagelung?> imagedata;
  File? file;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>resultcubit(),
    child: BlocConsumer<resultcubit,shoploginstates>(listener: (context, state){},
    builder: (context,state)
    {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Lungs Cancer'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n1,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Gender',
                    labelStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n2,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Age',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n3,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Smoking',
                    labelStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n4,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Yellow_Fingers',
                    labelStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
                    labelText: 'Anxiety',
                    labelStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n6,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Peer_Pressure',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n7,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Chronic_Disease',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n8,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Fatigue',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n9,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Allergy',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n10,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Wheezing',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n11,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Alcohol_Consuming',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n12,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Coughing',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n13,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Chortness_Of_Breath',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n14,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Swallowing_difficutly',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n15,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Chest_Pain',
                      labelStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  color: Colors.black,
                  child: const FittedBox(
                      child: const Text('Predict',
                          style: TextStyle(fontSize: 15.0, color: Colors.white))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>lungresultscreen())).then((value)
                    {
                    });
                    // setState(() {
                    resultcubit.get(context). lungdata(
                      id: id,
                      gender: int.parse(n1.text),
                      aGE: int.parse(n2.text),
                      SMOKING: int.parse(n3.text),
                      YELLOWFINGERS: int.parse(n4.text),
                      ANXIETY: int.parse(n5.text),
                      PEERPRESSURE: int.parse(n6.text),
                      CHRONICDISEASE: int.parse(n7.text),
                      FATIGUE: int.parse(n8.text),
                      ALLERGY: int.parse(n9.text),
                      WHEEZING: int.parse(n10.text),
                      ALCOHOLCONSUMING: int.parse(n11.text),
                      COUGHING: int.parse(n12.text),
                      SHORTNESSOFBREATH: int.parse(n13.text),
                      SWALLOWINGDIFFICULTY: int.parse(n14.text),
                      ChestPain: int.parse(n15.text),
                    );
                    // });
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },),);
  }
}
