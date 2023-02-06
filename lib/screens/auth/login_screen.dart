import 'package:flutter/material.dart';
import 'package:frutas_de_piura/controllers/login_controller.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:frutas_de_piura/widgets/login_input_decoration/input_decoration_login.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  final loginController = Get.put(LoginController());

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
                      height: 20,
                    ),
                    Image.asset('assets/mango.png', scale: 9),
                  ],
                ),
              ),
              //LOGIN SCREEN SIGN-IN FORM
              SingleChildScrollView(
                child: GetBuilder<LoginController>(builder: (controller) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 260,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        height: 500,
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
                              height: 25,
                            ),
                            Text(
                              'LOGIN',
                              style: GoogleFonts.ultra(fontSize: 25),
                            ),
                            const SizedBox(
                              height: 30,
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
                                      height: 30,
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
                                      height: 50,
                                    ),
                                    //LOGIN BUTTON
                                    GestureDetector(
                                      onTap: () {
                                        controller.checkLogin();
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
                                              Color.fromARGB(255, 13, 252, 21),
                                              Colors.amber,
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          'LOGIN',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.8),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    //SIGNUP BUTTON
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Don't have an Account?",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            // Navigator.pushReplacement(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //     builder: (context) =>
                                            //         const SignUpScreen(),
                                            //   ),
                                            // );
                                            Get.toNamed(GetRoutes.signup);
                                          },
                                          child: const Text(
                                            'SignUp Here',
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
                        height: 40,
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
