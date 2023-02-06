import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:frutas_de_piura/utils/baseurl.dart';
import 'package:frutas_de_piura/utils/custom_snackbar.dart';
import 'package:frutas_de_piura/widgets/loader/Loader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  late TextEditingController nameController,
      emailController,
      passwordController,
      confirmPasswordController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  checkSignUp() {
    if (nameController.text.isEmpty) {
      custonSnackbar("Error", "Name is requerid", "error");
      return;
    } else if (emailController.text.isEmpty ||
        GetUtils.isEmail(emailController.text) == false) {
      custonSnackbar("Error", "A Valid email is required", "error");
    } else if (passwordController.text.isEmpty) {
      custonSnackbar("Error", "Password is required", "error");
    } else if (passwordController.text != confirmPasswordController.text) {
      custonSnackbar("Error", "Password does not match!", "error");
    } else {
      Get.showOverlay(
          asyncFunction: () => signUp(), loadingWidget: const Loader());
    }
  }

  signUp() async {
    var response = await http.post(Uri.parse(baseurl + 'signup.php'), body: {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
    });

    var res = await json.decode(response.body);

    if (res['success']) {
      custonSnackbar("Success", res['message'], "success");
      Get.offAllNamed(GetRoutes.login);
    } else {
      custonSnackbar("Error", res['message'], "error");
    }
  }
}
