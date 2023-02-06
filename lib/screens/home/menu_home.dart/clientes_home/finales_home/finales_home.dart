import 'package:flutter/material.dart';
import 'package:frutas_de_piura/controllers/clients_controller.dart';
import 'package:frutas_de_piura/widgets/client_widgets/client_widgets.dart';
import 'package:frutas_de_piura/widgets/custom_search/custom_search.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalesHome extends StatefulWidget {
  const FinalesHome({super.key});

  @override
  State<FinalesHome> createState() => _FinalesHomeState();
}

class _FinalesHomeState extends State<FinalesHome> {
  final clientController = Get.put(ClientsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: GetBuilder<ClientsController>(builder: (controller) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      Text(
                        'CLIENTES',
                        style: GoogleFonts.ultra(
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/clien.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      child: CustomSearch(
                        onChanged: (val) {
                          controller.search(val);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              'CLIENTE',
                              style: GoogleFonts.ultra(),
                            ),
                            const SizedBox(
                              width: 115,
                            ),
                            Text(
                              'N° ENVIO',
                              style: GoogleFonts.ultra(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: controller.filterclient
                              .map((client) => ClientTile(client: client))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
