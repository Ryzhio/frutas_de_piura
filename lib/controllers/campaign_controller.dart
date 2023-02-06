// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, prefer_final_fields

// import 'dart:convert';
// import 'package:frutas_de_piura/models/campaign.dart';
// import 'package:http/http.dart' as http;

// class ServerFP {
//   String _baseUrl = "http://localhost/api_frutas_de_piura";

//   Future<List<Campaign>> getCampaigns() async {
//     try {
//       List<Campaign> campaigns = [];

//       http.Response response =
//           await http.get(Uri.parse('$_baseUrl/campaigns.php'));

//       List campaignsList = (json.decode(response.body))['campaigns'];

//       for (Map m in campaignsList) {
//         campaigns.add(Campaign.fromMap(m));
//       }

//       return campaigns;
//     } catch (e) {
//       print('Server Handler : error : ' + e.toString());
//       rethrow;
//     }
//   }
// }

import 'dart:convert';

import 'package:frutas_de_piura/models/campaign.dart';
import 'package:frutas_de_piura/models/user.dart';
import 'package:frutas_de_piura/utils/baseurl.dart';
import 'package:frutas_de_piura/utils/custom_snackbar.dart';
import 'package:frutas_de_piura/utils/shared_prefs.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CampaignController extends GetxController {
  List<Campaign> campaigns = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fechMyCampaign();
  }

  fechMyCampaign() async {
    var usr = await SharedPrefs().getUser();
    User user = User.fromJson(json.decode(usr));

    var response = await http
        .post(Uri.parse(baseurl + 'campaigns.php'), body: {"user_id": user.id});
    var res = await json.decode(response.body);

    if (res['success']) {
      campaigns = AllCampaigns.fromJson(res).campaign!;
      update();
    } else {
      custonSnackbar("Error", "Filed to fetch campaigns", "error");
    }
  }
}
