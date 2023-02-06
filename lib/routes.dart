import 'package:frutas_de_piura/screens/auth/login_screen.dart';
import 'package:frutas_de_piura/screens/auth/signup_screen.dart';
import 'package:frutas_de_piura/screens/menu_navigation_bar.dart';
import 'package:frutas_de_piura/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class GetRoutes {
  static const String welcome = "/welcome";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String menu = "/menu";

  static List<GetPage> routes = [
    GetPage(
      name: GetRoutes.welcome,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: GetRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: GetRoutes.signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: GetRoutes.menu,
      page: () => const MenuNavigationBar(),
    ),
  ];
}
