import 'package:get/get.dart';

class checkcontroller extends GetxService{
  RxBool isChecked  = true.obs;
  void check(){
    isChecked.value ? isChecked(false): isChecked(true);
  }

}