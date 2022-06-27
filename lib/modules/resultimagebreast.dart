
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thedetector/model/getresultlungimage.dart';
import 'package:thedetector/modules/images/imagebreast.dart';
import 'package:thedetector/network/hhtp.dart';

class resultimagebreast extends StatefulWidget {
  resultimagebreast({Key? key}) : super(key: key);
  @override
  home createState() => home();
}
class home extends State<resultimagebreast> {
  TextEditingController edit = TextEditingController();

  // late Future<Year> year;
  late Future<lungimageresult> imagebreastresult;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagebreastresult = gitbreastimageresult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: FutureBuilder<lungimageresult>(
            future: imagebreastresult,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //List<?>? Yearinfo = snapshot.data!.data!;

                return Center(
                  child: Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      child: Container(
                        height: 220,
                        decoration: const BoxDecoration(
                            color: Color(0Xff0D47A1),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsetsDirectional.only(start: 85),
                                  child: Container(
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 16, left: 16),
                                      child: Text(
                                        'The Result',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16, left: 16),
                              child: Text(
                                '${snapshot.data!.result}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 16, left: 16),
                              child: Text(
                                'Confidence Rate ',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16, left: 16),
                              child: Text(
                                '${snapshot.data!.conf}%',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.pop(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  imagebreast()));
                                    },
                                    child: const Text(
                                      'ok',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Colors.white,
                                    textColor: Colors.orange,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                      Text('LOADING',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                );
              }
            },
          ),
        ));
  }
}
