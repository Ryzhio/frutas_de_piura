import 'package:flutter/material.dart';
import 'package:frutas_de_piura/controllers/signup_controller.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:frutas_de_piura/widgets/login_input_decoration/input_decoration_login.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formkey = GlobalKey<FormState>();
  final signupController = Get.put(SignUpController());

  bool _ispassword = true;

  void _viewPassword() {
    setState(() {
      _ispassword = !_ispassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: Container(
          color: Colors.black38,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              //LOGIN SCREEN HEADER
              Container(
                color: Colors.white,
                width: double.infinity,
                height: size.height * 0.4,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'FRUTAS',
                          style: GoogleFonts.ultra(
                            color: const Color.fromARGB(255, 24, 207, 7),
                            fontSize: 23,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          ' DE PIURA',
                          style: GoogleFonts.ultra(
                            color: const Color.fromARGB(255, 3, 101, 7),
                            fontSize: 23,
                            letterSpacing: 1.5,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/mango.png', scale: 9),
                  ],
                ),
              ),
              //LOGIN SCREEN SIGN-IN FORM
              SingleChildScrollView(
                child: GetBuilder<SignUpController>(builder: (controller) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 250,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        height: 550,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              offset: Offset(10, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'SIGNUP',
                              style: GoogleFonts.ultra(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 300,
                              child: Form(
                                key: formkey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: controller.nameController,
                                      autocorrect: false,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration:
                                          InputDecorationLogin.inputDecoration(
                                        hintext: 'Enter Name',
                                        labeltext: 'Name',
                                        icono: const Icon(
                                          Icons.person,
                                        ),
                                      ),
                                      validator: (value) {
                                        return (value != null &&
                                                value.length >= 7)
                                            ? null
                                            : 'Must be at least 7 characters';
                                      },
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller: controller.emailController,
                                      autocorrect: false,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration:
                                          InputDecorationLogin.inputDecoration(
                                        hintext: 'Enter Email',
                                        labeltext: 'Email',
                                        icono: const Icon(
                                          Icons.alternate_email_rounded,
                                        ),
                                      ),
                                      validator: (value) {
                                        String caracteres =
                                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                        RegExp regExp = RegExp(caracteres);
                                        return regExp.hasMatch(value ?? '')
                                            ? null
                                            : 'Invalid Email ';
                                      },
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    TextFormField(
                                      controller: controller.passwordController,
                                      autocorrect: false,
                                      obscureText: _ispassword,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: 'Enter Password',
                                        labelText: 'Password',
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        suffixIcon: InkWell(
                                          onTap: _viewPassword,
                                          child: Icon(_ispassword
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                        ),
                                      ),
                                      validator: (value) {
                                        return (value != null &&
                                                value.length >= 8)
                                            ? null
                                            : 'Must be at least 8 characters';
                                      },
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    TextFormField(
                                      controller:
                                          controller.confirmPasswordController,
                                      autocorrect: false,
                                      obscureText: _ispassword,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.green,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: 'Enter Password',
                                        labelText: 'Confirm Password',
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        suffixIcon: InkWell(
                                          onTap: _viewPassword,
                                          child: Icon(_ispassword
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                        ),
                                      ),
                                      validator: (value) {
                                        return (value != null &&
                                                value.length >= 8)
                                            ? null
                                            : 'Must be at least 8 characters';
                                      },
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    //LOGIN BUTTON
                                    GestureDetector(
                                      onTap: () {
                                        controller.checkSignUp();
                                        if (formkey.currentState!.validate()) {}
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(15),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)
                                                  .copyWith(
                                            topRight: const Radius.circular(0),
                                          ),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.blue,
                                              Colors.green,
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          'SIGNUP',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.8),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //SIGNUP BUTTON
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Already have an Account?",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            // Navigator.pushReplacement(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const LoginScreen()));
                                            Get.toNamed(GetRoutes.login);
                                          },
                                          child: const Text(
                                            'Login Here',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
