class putlungdata {
  int? id;
  int? gender;
  int? AGE;
  int? SMOKING;
  int? YELLOWFINGERS;
  int? ANXIETY;
  int? PEERPRESSURE;
  int? CHRONICDISEASE;
  int? FATIGUE;
  int? ALLERGY;
  int? WHEEZING;
  int? ALCOHOLCONSUMING;
  int? COUGHING;
  int? SHORTNESSOFBREATH;
  int? SWALLOWINGDIFFICULTY;
  int? ChestPain;

  putlungdata(
      {this.id,
        this.gender,
        this.AGE,
        this.SMOKING,
        this.YELLOWFINGERS,
        this.ANXIETY,
        this.PEERPRESSURE,
        this.CHRONICDISEASE,
        this.FATIGUE,
        this.ALLERGY,
        this.WHEEZING,
        this.ALCOHOLCONSUMING,
        this.COUGHING,
        this.SHORTNESSOFBREATH,
        this.SWALLOWINGDIFFICULTY,
        this.ChestPain});

  putlungdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gender = json['Gender'];
    AGE = json['AGE'];
    SMOKING = json['SMOKING'];
    YELLOWFINGERS = json['YELLOW_FINGERS'];
    ANXIETY = json['ANXIETY'];
    PEERPRESSURE = json['PEER_PRESSURE'];
    CHRONICDISEASE = json['CHRONIC_DISEASE'];
    FATIGUE = json['FATIGUE'];
    ALLERGY = json['ALLERGY'];
    WHEEZING = json['WHEEZING'];
    ALCOHOLCONSUMING = json['ALCOHOL_CONSUMING'];
    COUGHING = json['COUGHING'];
    SHORTNESSOFBREATH = json['SHORTNESS_OF_BREATH'];
    SWALLOWINGDIFFICULTY = json['SWALLOWING_DIFFICULTY'];
    ChestPain = json['chestPain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Gender'] = this.gender;
    data['AGE'] = this.AGE;
    data['SMOKING'] = this.SMOKING;
    data['YELLOW_FINGERS'] = this.YELLOWFINGERS;
    data['ANXIETY'] = this.ANXIETY;
    data['PEER_PRESSURE'] = this.PEERPRESSURE;
    data['CHRONIC_DISEASE'] = this.CHRONICDISEASE;
    data['FATIGUE'] = this.FATIGUE;
    data['ALLERGY'] = this.ALLERGY;
    data['WHEEZING'] = this.WHEEZING;
    data['ALCOHOL_CONSUMING'] = this.ALCOHOLCONSUMING;
    data['COUGHING'] = this.COUGHING;
    data['SHORTNESS_OF_BREATH'] = this.SHORTNESSOFBREATH;
    data['SWALLOWING_DIFFICULTY'] = this.SWALLOWINGDIFFICULTY;
    data['chestPain'] = this.ChestPain;
    return data;
  }
}
