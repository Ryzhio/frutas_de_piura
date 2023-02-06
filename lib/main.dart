import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Mode FullScreen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.bottom]);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frutas de Piura',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: GetRoutes.welcome,
      getPages: GetRoutes.routes,
    );
  }
}
