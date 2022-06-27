import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thedetector/network/hhtp.dart';
import 'breast_cancer.dart';
import '../model/breastmodel.dart';
class breastresultscreen extends StatefulWidget {
  breastresultscreen ({Key? key}) : super(key: key);
  @override
  home createState() => home();
}
class home extends State<breastresultscreen> {
  TextEditingController edit =TextEditingController();
  // late Future<Year> year;
  late Future<breastresult> library;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    library = GetResult();
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
          child: FutureBuilder<breastresult>(
            future: library,

            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //List<?>? Yearinfo = snapshot.data!.data!;

                return Center(child:  Dialog(

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child:  Container(
                      height: 220,
                      decoration: const BoxDecoration(
                          color: Color(0Xff0D47A1),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(start: 0),
                                  child: Container(
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 16, left: 16),
                                      child: Text('The Result',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(right: 16, left: 16),
                              child: Text('${snapshot.data!.res}',
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30),
                                textAlign: TextAlign.center,),
                            ),
                            SizedBox(height: 50,),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  RaisedButton(onPressed: (){
                                    Navigator.pop(context,
                                        MaterialPageRoute(builder: (context)=>
                                            brest_cancer()));
                                  }, child: Text('ok',style: TextStyle(
                                    color: Colors.orange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                    color: Colors.white,
                                    textColor: Colors.redAccent,),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ),
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
                      Text('LOADING'),
                    ],
                  ),
                );
              }
            },
          ),
        ));
  }
}
