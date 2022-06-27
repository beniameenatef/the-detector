class breastresult {
  String? res;

  breastresult({this.res});

  breastresult.fromJson(Map<String, dynamic> json) {
    res = json['res'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res'] = this.res;
    return data;
  }
}