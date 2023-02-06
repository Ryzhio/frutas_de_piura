import 'package:flutter/material.dart';
import 'package:frutas_de_piura/controllers/campaign_controller.dart';
import 'package:frutas_de_piura/widgets/campaings_widgets/campaings_widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final campaignController = Get.put(CampaignController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: GetBuilder<CampaignController>(builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CAMPAÑAS',
                      style:
                          GoogleFonts.ultra(color: Colors.green, fontSize: 45),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: controller.campaigns
                        .map(
                          (campaign) => CampaignTile(campaign: campaign),
                        )
                        .toList(),
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
