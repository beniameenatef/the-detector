import 'dart:io';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:thedetector/bloc/state.dart';
import 'package:thedetector/model/putmodeldata.dart';

import '../model/putimagelungmodel.dart';
import '../model/putmodelbreastdata.dart';

class resultcubit extends Cubit<shoploginstates> {
  resultcubit() : super(qualityInitialState());

  static resultcubit get(context) => BlocProvider.of(context);

  Future<putlungdata?> lungdata({
    int? id,
    int? gender,
    int? aGE,
    int? SMOKING,
    int? YELLOWFINGERS,
    int? ANXIETY,
    int? PEERPRESSURE,
    int? CHRONICDISEASE,
    int? FATIGUE,
    int? ALLERGY,
    int? WHEEZING,
    int? ALCOHOLCONSUMING,
    int? COUGHING,
    int? SHORTNESSOFBREATH,
    int? SWALLOWINGDIFFICULTY,
    int? ChestPain,
  }) async {
    emit(loginlodingstete());
    dynamic api = 'http://192.168.95.199:8000/api/lunginputtext';

    await http
        .put((Uri.parse(api)),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<dynamic, dynamic>{
              "id": id,
              "Gender": gender,
              "AGE": aGE,
              "SMOKING": SMOKING,
              "YELLOW_FINGERS": YELLOWFINGERS,
              "ANXIETY": ANXIETY,
              "PEER_PRESSURE": PEERPRESSURE,
              "CHRONIC_DISEASE": CHRONICDISEASE,
              "FATIGUE": FATIGUE,
              "ALLERGY": ALLERGY,
              "WHEEZING": WHEEZING,
              "ALCOHOL_CONSUMING": ALCOHOLCONSUMING,
              "COUGHING": COUGHING,
              "SHORTNESS_OF_BREATH": SHORTNESSOFBREATH,
              "SWALLOWING_DIFFICULTY": SWALLOWINGDIFFICULTY,
              "chestPain": ChestPain,
            }))
        .then((value) {
      if (value.statusCode == 200) {
        var data = jsonDecode(value.body.toString());
        print(data);
        emit(loginsuccesstete());
        return putlungdata.fromJson(jsonDecode(value.body));
      } else {
        throw Exception('Failed to put data.');
      }
    }).catchError((error) {
      emit(loginerrorstete(error.toString()));
      print(error.toString());
    });
  }


  putbreastdata?breastmodel;
  Future<putbreastdata?> breastdata({
    int? id,
    int? radiusMean,
    int? textureMean,
    int? perimeterMean,
    int? areaMean,
    int? smoothnessMean,
    int? compactnessMean,
    int? concavityMean,
    int? concavePointsMean,
    int? symmetryMean,
    int? fractalDimensionMean,
    int? radiusSe,
    int? textureSe,
    int? perimeterSe,
    int? areaSe,
    int? smoothnessSe,
    int? compactnessSe,
    int? concavitySe,
    int? concavePointsSe,
    int? symmetrySe,
    int? fractalDimensionSe,
    int? radiusWorst,
    int? textureWorst,
    int? perimeterWorst,
    int? areaWorst,
    int? smoothnessWorst,
    int? compactnessWorst,
    int? concavityWorst,
    int? concavePointsWorst,
    int? symmetryWorst,
    int? fractalDimensionWorst,
  }) async {
    emit(putimagebreastlodingstete());
    dynamic api = 'http://192.168.95.199:8000/api/breastinputtext';

    await http
        .put((Uri.parse(api)),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<dynamic, dynamic>{
              'id': id,
              'radius_mean': radiusMean,
              'texture_mean': textureMean,
              'perimeter_mean': perimeterMean,
              'area_mean': areaMean,
              'smoothness_mean': smoothnessMean,
              'compactness_mean': compactnessMean,
              'concavity_mean': concavityMean,
              'concave_points_mean': concavePointsMean,
              'symmetry_mean': symmetryMean,
              'fractal_dimension_mean': fractalDimensionMean,
              'radius_se': radiusSe,
              'texture_se': textureSe,
              'perimeter_se': perimeterSe,
              'area_se': areaSe,
              'smoothness_se': smoothnessSe,
              'compactness_se': compactnessSe,
              'concavity_se': concavitySe,
              'concave_points_se': concavePointsSe,
              'symmetry_se': symmetrySe,
              'fractal_dimension_se': fractalDimensionSe,
              'radius_worst': radiusWorst,
              'texture_worst': textureWorst,
              'perimeter_worst': perimeterWorst,
              'area_worst': areaWorst,
              'smoothness_worst': smoothnessWorst,
              'compactness_worst': compactnessWorst,
              'concavity_worst': concavityWorst,
              'concave_points_worst': concavePointsWorst,
              'symmetry_worst': symmetryWorst,
              'fractal_dimension_worst': fractalDimensionWorst,
            }))
        .then((value) {
      if (value.statusCode == 200) {
        var data = jsonDecode(value.body.toString());
        print(data);
        emit(putimagebreastsuccesstete());
        return putbreastdata.fromJson(jsonDecode(value.body));
      } else {
        throw Exception('Failed to put data.');
      }
    }).catchError((error) {
      emit(putimagebreasterrorstete(error.toString()));
      print(error.toString());
    });
  }

  putimagelung? image;

  Future<putimagelung?> lungimagedata({
    int? id,
    String? lungImage,
  }) async {
    emit(putimagelunglodingstete());
    dynamic api = 'http://192.168.95.199:8000/rest/viewsets/lungimage/1/';

    await http
        .put((Uri.parse(api)),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, dynamic>{
              "id": id,
              "LungImage": lungImage,
            }))
        .then((value) {
      if (value.statusCode == 200) {
        var data = jsonDecode(value.body.toString());
        print(data);
        image = putimagelung.fromJson(jsonDecode(value.body));
        emit(putimagelungsuccesstete());
        return image;
      } else {
        throw Exception('Failed to put data.');
      }
    }).catchError((error) {
      emit(putimagelungerrorstete(error.toString()));
      print(error.toString());
    });
  }

// Future<putimagelung?> updateimage({
//   int? id,
//   String? lungImage,}) async {
//   emit(imagelunglodingstete());
//    await http.put(
//     Uri.parse('http://192.168.137.165:8000/rest/viewsets/lungimage/1/'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, dynamic>{
//       'id': id,
//       'LungImage': lungImage,
//     }),
//   ).then((value)
//   {
//     if (value.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//        image= putimagelung.fromJson(jsonDecode(value.body));
//        emit(imagelungsuccesstete());
//        return image;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to update image.');
//     }
//   }).catchError((error)
//   {
//     emit(imagelungerrorstete(error.toString()));
//     print(error.toString());
//   });
//
//
// }

// Future<putimagelung?> updateimage({
//   int? id,
//   File? lungImage,}) async {
//   emit(imagelunglodingstete());
//   dynamic api = 'http://192.168.137.165:8000/rest/viewsets/lungimage/1/';
//
//   final file =
//   http.MultipartRequest("POST", Uri.parse(api));
//   headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, dynamic>{
//       'id': id,
//       'LungImage': lungImage,
//     }),
//   ).then((value)
//   {
//     if (value.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//        image= putimagelung.fromJson(jsonDecode(value.body));
//        emit(imagelungsuccesstete());
//        return image;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to update image.');
//     }
//   }).catchError((error)
//   {
//     emit(imagelungerrorstete(error.toString()));
//     print(error.toString());
//   });
//
//
// }
}
