class lungresult {
  String? res;

  lungresult({this.res});

  lungresult.fromJson(Map<String, dynamic> json) {
    res = json['res'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res'] = this.res;
    return data;
  }
}