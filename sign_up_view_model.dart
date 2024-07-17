import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/common/globs.dart';
import 'package:online_groceries/auth_service.dart';
import 'package:online_groceries/view/home/home_view.dart'; // Correct import path

class SignUpViewModel extends GetxController {
  final AuthService authService = AuthService();

  var txtUsername = TextEditingController().obs;
  var txtEmail = TextEditingController().obs;
  var txtPassword = TextEditingController().obs;
  var isShowPassword = false.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("SignUpViewModel Init ");
    }
    txtUsername.value.text = "User1";
    txtEmail.value.text = "user1@gmail.com";
    txtPassword.value.text = "123456";
  }

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  Future<void> serviceCallSignUp() async {
    if (txtUsername.value.text.isEmpty) {
      Get.snackbar(Globs.appName, "Please enter username");
      return;
    }

    if (!GetUtils.isEmail(txtEmail.value.text)) {
      Get.snackbar(Globs.appName, "Please enter valid email address");
      return;
    }

    if (txtPassword.value.text.length < 6) {
      Get.snackbar(
          Globs.appName, "Please enter valid password min 6 characters");
      return;
    }

    Globs.showHUD();

    try {
      // Use AuthService to sign up
      await authService.signUp(
          txtUsername.value.text, txtEmail.value.text, txtPassword.value.text);
      Globs.hideHUD();
      // Navigate to HomeView on successful sign-up
      Get.offAll(() => HomeView());
    } catch (e) {
      Globs.hideHUD();
      Get.snackbar("Error", e.toString());
    }
  }
}
