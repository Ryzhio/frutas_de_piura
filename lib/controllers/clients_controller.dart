import 'dart:convert';
import 'package:frutas_de_piura/models/clients.dart';
import 'package:frutas_de_piura/models/dclient.dart';
import 'package:frutas_de_piura/utils/baseurl.dart';
import 'package:frutas_de_piura/utils/custom_snackbar.dart';
import 'package:frutas_de_piura/utils/shared_prefs.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClientsController extends GetxController {
  List<Client> clients = [];
  List<Client> filterclient = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fechMyCampaign();
  }

  fechMyCampaign() async {
    var usr = await SharedPrefs().getUser();
    DClient user = DClient.fromJson(json.decode(usr));

    var response = await http
        .post(Uri.parse(baseurl + 'clients.php'), body: {"client_id": user.id});
    var res = await json.decode(response.body);

    if (res['success']) {
      clients = ALLClients.fromJson(res).client!;
      filterclient = ALLClients.fromJson(res).client!;
      update();
    } else {
      custonSnackbar("Error", "Filed to fetch clients", "error");
    }
  }

  search(String val) {
    if (val.isEmpty) {
      filterclient = clients;
      update();
      return;
    }

    filterclient = clients.where((client) {
      return client.clientTitle!.toLowerCase().contains(val.toLowerCase());
    }).toList();

    update();
  }
}
