import 'package:app_movil_fisi_unmsm/src/providers/users_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UsersProvider usersProvider = UsersProvider();
  void goToPabellonPage() {
    Get.toNamed('/pabellon');
  }
  void goToRegisterPage() {
    Get.toNamed('/register');
  }
  
}