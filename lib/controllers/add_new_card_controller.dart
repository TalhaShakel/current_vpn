import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddNewCardController extends GetxController {

  final nameController  = TextEditingController();
  final numberController  = TextEditingController();
  final expireDateController  = TextEditingController();
  final cvvController  = TextEditingController();

  RxBool setDefault = true.obs;

}