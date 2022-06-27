class lungimageresult {
  String ?result;
  String ?conf;

  lungimageresult({this.result, this.conf});

  lungimageresult.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    conf = json['conf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['conf'] = this.conf;
    return data;
  }
}