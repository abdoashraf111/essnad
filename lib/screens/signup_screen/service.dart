import 'package:get/get.dart';

class SignupService extends GetxController{
  bool x=false;
  Remark(){
    if(x==false){x=true;}
    else{x=false;}
    update();
  }



}