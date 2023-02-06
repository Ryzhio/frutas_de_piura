import 'package:frutas_de_piura/models/campaign.dart';
import 'package:frutas_de_piura/screens/home/menu_home.dart/menu_home.dart';
import 'package:get/get.dart';

class HomeRoutes {
  static const String menuhome = "/menuhome";
  // static const String login = "/login";
  // static const String signup = "/signup";
  // static const String menu = "/menu";

  static List<GetPage> routess = [
    GetPage(
      name: HomeRoutes.menuhome,
      page: () => MenuHome(
        campaign: Campaign(),
      ),
    ),
    // GetPage(
    //   name: GetRoutes.login,
    //   page: () => const LoginScreen(),
    // ),
    // GetPage(
    //   name: GetRoutes.signup,
    //   page: () => const SignUpScreen(),
    // ),
    // GetPage(
    //   name: GetRoutes.menu,
    //   page: () => const MenuNavigationBar(),
    // ),
  ];
}
