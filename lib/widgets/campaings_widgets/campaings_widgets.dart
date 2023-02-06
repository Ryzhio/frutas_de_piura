import 'package:flutter/material.dart';
import 'package:frutas_de_piura/models/campaign.dart';
import 'package:frutas_de_piura/screens/home/menu_home.dart/menu_home.dart';

class CampaignTile extends StatefulWidget {
  final Campaign campaign;
  const CampaignTile({super.key, required this.campaign});

  @override
  State<CampaignTile> createState() => _CampaignTileState();
}

class _CampaignTileState extends State<CampaignTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuHome(campaign: widget.campaign),
            ),
          );
        },
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 300,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50).copyWith(
                topRight: const Radius.circular(50),
              ),
              gradient: const LinearGradient(
                colors: [
                  Colors.green,
                  Colors.amber,
                ],
              ),
            ),
            child: Text(
              widget.campaign.campaignsTitle!,
              style: TextStyle(
                color: Colors.white.withOpacity(.8),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
