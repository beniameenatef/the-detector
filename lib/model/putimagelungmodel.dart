
class putimagelung {
  int? id;
  String? lungImage;

  putimagelung({this.id, this.lungImage});

  putimagelung.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lungImage = json['LungImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['LungImage'] = this.lungImage;
    return data;
  }
}