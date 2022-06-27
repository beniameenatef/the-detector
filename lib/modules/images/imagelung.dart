import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:thedetector/modules/resultimagelung.dart';


class imagelung extends StatefulWidget {
  const imagelung({Key? key}) : super(key: key);

  @override
  State<imagelung> createState() => _imagelungState();
}

class _imagelungState extends State<imagelung> {
  File? image;
  bool showspinner=false;
  Future pickergallary() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if(myfile !=null){
      image = File(myfile.path);}else
      {
        print("no image select file");
      }
    });
  }
  // Future upload()async
  // {
  //   if(_file ==null)return ;
  //   int id=1;
  //   String base64=base64Encode(_file!.readAsBytesSync());
  //   String imagename=_file!.path.split("/").last;
  //   var url = "http://192.168.137.165:8000/rest/viewsets/lungimage/1/";
  //   var data= {"LungImage":imagename,"id":id};
  //   var response=await http.put(Uri.parse(url),body: data);
  //   Navigator.of(context).pushNamed('LungImage');
  // }

  void pickercamera() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      if(myfile !=null){
        image = File(myfile.path);}else
      {
        print("no image take of camera");
      }    });
  }
  
  Future<void>uploadimage()async
  {
    setState(() {
      showspinner=true;
      
    });
    var stream= new http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var uri =Uri.parse("http://192.168.95.199:8000/rest/viewsets/lungimage/1/");
    var request=new http.MultipartRequest("POST", uri);
    request.fields['LungImage']="static title";
    var multipart=new http.MultipartFile("LungImage", stream, length);
    request.files.add(multipart);
    var response= await request.send();
    if(response.statusCode==200)
    {
      setState(() {
        showspinner=false;

      });
      print("image uploaded");
    }else
    {
      setState(() {
        showspinner=false;

      });
      print("image not uploaded");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showspinner,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Upload Image Lung'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image3.jpeg'),
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
                      child: image == null
                          ? const Text(
                        'Image Not Select',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),
                      )
                          : Column(
                        children: [
                          Image.file(
                            image!,
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
                                uploadimage();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => resultimagelung()));
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
      ),
    );
  }
}
