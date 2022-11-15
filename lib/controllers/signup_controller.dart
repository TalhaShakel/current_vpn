import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isVisible = false.obs;

}