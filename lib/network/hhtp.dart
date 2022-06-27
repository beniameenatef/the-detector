import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thedetector/model/breastmodel.dart';
import 'package:thedetector/model/getresultlungimage.dart';
import '../model/lungmodel.dart';

Future<lungresult> takeresult() async {
  final response = await http.get(Uri.parse('http://192.168.95.199:8000/api/lungtext'));

  if(response.statusCode==200){
    print(response.body);
    return lungresult.fromJson(jsonDecode(response.body));
  }
  else
  {
    throw Exception('failed to get astaff data');
  }
}


Future<breastresult> GetResult() async {
  final response = await http.get(Uri.parse('http://192.168.95.199:8000/breast/textresultapi/'));

  if(response.statusCode==200){
    print(response.body);
    return breastresult.fromJson(jsonDecode(response.body));
  }
  else
  {
    throw Exception('failed to get astaff data');
  }
}

Future<lungimageresult> Gitlungimageresult() async {
  final response = await http.get(Uri.parse('http://192.168.95.199:8000/api/lung/imageresult'));

  if(response.statusCode==200){
    print(response.body);
    return lungimageresult.fromJson(jsonDecode(response.body));
  }
  else
  {
    throw Exception('failed to get astaff data');
  }

}
Future<lungimageresult> gitbreastimageresult() async {
  final response = await http.get(Uri.parse('http://192.168.95.199:8000/api/breast/imageresult'));

  if(response.statusCode==200){
    print(response.body);
    return lungimageresult.fromJson(jsonDecode(response.body));
  }
  else
  {
    throw Exception('failed to get astaff data');
  }

}

