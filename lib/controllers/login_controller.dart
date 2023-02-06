import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frutas_de_piura/models/user.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:frutas_de_piura/utils/baseurl.dart';
import 'package:frutas_de_piura/utils/custom_snackbar.dart';
import 'package:frutas_de_piura/utils/shared_prefs.dart';
import 'package:frutas_de_piura/widgets/loader/Loader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkUser();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  checkUser() async {
    var user = await SharedPrefs().getUser();
    if (user != null) {
      Get.offAllNamed(GetRoutes.menu);
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  checkLogin() {
    if (emailController.text.isEmpty ||
        GetUtils.isEmail(emailController.text) == false) {
      custonSnackbar("Error", "A Valid email is required", "error");
    } else if (passwordController.text.isEmpty) {
      custonSnackbar("Error", "Password is required", "error");
    } else {
      Get.showOverlay(
          asyncFunction: () => login(), loadingWidget: const Loader());
    }
  }

  login() async {
    var response = await http.post(Uri.parse(baseurl + 'login.php'), body: {
      "email": emailController.text,
      "password": passwordController.text,
    });

    var res = await json.decode(response.body);

    if (res['success']) {
      custonSnackbar("Success", res['message'], "success");
      User user = User.fromJson(res['user']);
      await SharedPrefs().storeUser(json.encode(user));
      Get.offAllNamed(GetRoutes.menu);
    } else {
      custonSnackbar("Error", res['message'], "error");
    }
  }
}
