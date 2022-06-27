

abstract class shoploginstates {}

class qualityInitialState extends shoploginstates {}

class loginlodingstete extends shoploginstates {}
class loginsuccesstete extends shoploginstates {

}
class loginerrorstete extends shoploginstates
{
  final String error;
  loginerrorstete(this.error);

}

class putimagelunglodingstete extends shoploginstates {}
class putimagelungsuccesstete extends shoploginstates {}
class putimagelungerrorstete extends shoploginstates
{
  final String error;
  putimagelungerrorstete(this.error);
}
class putimagebreastlodingstete extends shoploginstates {}
class putimagebreastsuccesstete extends shoploginstates {}
class putimagebreasterrorstete extends shoploginstates
{
  final String error;
  putimagebreasterrorstete(this.error);
}


class imagelunglodingstete extends shoploginstates {}
class imagelungsuccesstete extends shoploginstates {}
class imagelungerrorstete extends shoploginstates
{
  final String error;
  imagelungerrorstete(this.error);
}


class visibalSuccessState extends shoploginstates {}

