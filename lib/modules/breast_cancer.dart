import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thedetector/modules/breastresultscreen.dart';
import '../bloc/cubit.dart';
import '../bloc/state.dart';
import 'home.dart';

class brest_cancer extends StatefulWidget {
  @override
  State<brest_cancer> createState() => _brest_cancerState();
}
class _brest_cancerState extends State<brest_cancer> {
  TextEditingController n1 = new TextEditingController();

  TextEditingController n2 = new TextEditingController();

  TextEditingController n3 = new TextEditingController();

  TextEditingController n4 = new TextEditingController();

  TextEditingController n5 = new TextEditingController();

  TextEditingController n6 = new TextEditingController();

  TextEditingController n7 = new TextEditingController();

  TextEditingController n8 = new TextEditingController();

  TextEditingController n9 = new TextEditingController();

  TextEditingController n10 = new TextEditingController();

  TextEditingController n11 = new TextEditingController();

  TextEditingController n12 = new TextEditingController();

  TextEditingController n13 = new TextEditingController();

  TextEditingController n14 = new TextEditingController();

  TextEditingController n15 = new TextEditingController();

  TextEditingController n16 = new TextEditingController();

  TextEditingController n17 = new TextEditingController();

  TextEditingController n18 = new TextEditingController();

  TextEditingController n19 = new TextEditingController();

  TextEditingController n20 = new TextEditingController();

  TextEditingController n21 = new TextEditingController();

  TextEditingController n22 = new TextEditingController();

  TextEditingController n23 = new TextEditingController();

  TextEditingController n24 = new TextEditingController();

  TextEditingController n25 = new TextEditingController();

  TextEditingController n26 = new TextEditingController();

  TextEditingController n27 = new TextEditingController();

  TextEditingController n28 = new TextEditingController();

  TextEditingController n29 = new TextEditingController();

  TextEditingController n30 = new TextEditingController();
int id=1;
  dynamic x;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>resultcubit(),
        child: BlocConsumer<resultcubit,shoploginstates>(listener: (context, state){},
    builder: (context,state)
    {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: ()
          {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context)=>  homescreen()));
          },icon: Icon(Icons.arrow_back_ios)),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: InkWell(
          //         child: Icon(Icons.add_a_photo,size: 35,),
          //         onTap: ()async{
          //           ImagePicker a=new ImagePicker();
          //           dynamic b=await a.getImage(source: ImageSource.camera);
          //           setState(() {
          //             x=File(b.path);});}),
          //     //SizedBox(height: 20,),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: InkWell(
          //         child: Icon(Icons.image_outlined,size: 35,),
          //         onTap: ()async{
          //           ImagePicker a=new ImagePicker();
          //           dynamic b=await a.getImage(source: ImageSource.gallery);
          //           setState(() {
          //             x=File(b.path);});}
          //     ),
          //   ),
          // ],

          title: Text('Breast Cancer'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image2.jpeg'),
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
                    labelText: 'Radius_Mean',
                    labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                      labelText: 'Texture_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n3,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Perimeter_Mean',
                    labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n4,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Area_Mean',
                    labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n5,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide()),
                    labelText: 'Smoothness_Mean',
                    labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n6,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Compactness_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n7,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concavity_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n8,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concave Point_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n9,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Symmetry_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n10,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Fractal_Dimension_Mean',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n11,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Radius_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n12,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Texture_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n13,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Perimeter_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n14,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Area_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n15,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Smoothness_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n16,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Compactness_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n17,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concavity_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n18,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concave_Point_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n19,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Symmetry_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n20,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Fractal_Dimension_Se',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n21,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Radius_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n22,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Texture_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n23,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Perimeter_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n24,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Area_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n25,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Smoothness_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n26,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Compactness_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n27,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concavity_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n28,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Concave_Point_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n29,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Symmetry_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: n30,
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide()),
                      labelText: 'Fractal_Dimension_Worst',
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    color: Colors.lightBlue,
                    child: FittedBox(
                        child: Text('Predict',
                            style: TextStyle(fontSize: 15.0, color: Colors.black))),
                    onPressed: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>breastresultscreen())).then((value)
                      {

                      },);
                      resultcubit.get(context). breastdata(
                        id: id,
                        radiusMean:  int.parse(n1.text),
                        textureMean: int.parse(n2.text),
                        perimeterMean:  int.parse(n3.text),
                        areaMean: int.parse(n4.text),
                        smoothnessMean: int.parse(n5.text),
                        compactnessMean: int.parse(n6.text),
                        concavityMean: int.parse(n7.text),
                        concavePointsMean: int.parse(n8.text),
                        symmetryMean: int.parse(n9.text),
                        fractalDimensionMean: int.parse(n10.text),
                        radiusSe: int.parse(n11.text),
                        textureSe: int.parse(n12.text),
                        perimeterSe: int.parse(n13.text),
                        areaSe: int.parse(n14.text),
                        smoothnessSe: int.parse(n15.text),
                        compactnessSe: int.parse(n16.text),
                        concavitySe: int.parse(n17.text),
                        concavePointsSe: int.parse(n18.text),
                        symmetrySe:  int.parse(n19.text),
                        fractalDimensionSe: int.parse(n20.text),
                        radiusWorst: int.parse(n21.text),
                        textureWorst: int.parse(n22.text),
                        perimeterWorst: int.parse(n23.text),
                        areaWorst: int.parse(n24.text),
                        smoothnessWorst: int.parse(n25.text),
                        compactnessWorst: int.parse(n26.text),
                        concavityWorst: int.parse(n26.text),
                        concavePointsWorst: int.parse(n28.text),
                        symmetryWorst: int.parse(n29.text),
                        fractalDimensionWorst: int.parse(n30.text),

                      );}),
              ],
            ),
          ),
        ),
      );
    }));

  }
}
