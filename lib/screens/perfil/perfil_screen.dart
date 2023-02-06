import 'package:flutter/material.dart';
import 'package:frutas_de_piura/routes.dart';
import 'package:frutas_de_piura/utils/shared_prefs.dart';
import 'package:get/get.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  Widget userInfoItemProfile(IconData iconData, String userData) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orange.shade300,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.black,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            userData,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                'assets/man.png',
                width: 240,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            userInfoItemProfile(Icons.person, "Cesar Morocho Marchan"),
            const SizedBox(
              height: 30,
            ),
            userInfoItemProfile(Icons.email, "cesar_moromarfp@gmail.com"),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Logout?"),
                        content: const Text("Are you are you want to logout?"),
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.white),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red),
                              onPressed: () async {
                                await SharedPrefs().removeUser();
                                Get.offAllNamed(GetRoutes.login);
                              },
                              child: const Text(
                                "Confirm",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(32),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.logout_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
