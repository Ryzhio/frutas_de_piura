class ALLClients {
  bool? success;
  String? message;
  List<Client>? client;

  ALLClients({this.success, this.message, this.client});

  ALLClients.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      client = <Client>[];
      json['data'].forEach((v) {
        client!.add(Client.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (client != null) {
      data['data'] = client!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Client {
  String? id;
  String? clientId;
  String? clientTitle;
  String? envio;
  String? productor;
  String? date;

  Client(
      {this.id,
      this.clientId,
      this.clientTitle,
      this.envio,
      this.productor,
      this.date});

  Client.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clientId = json['client_id'];
    clientTitle = json['client_title'];
    envio = json['envio'];
    productor = json['productor'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['client_id'] = clientId;
    data['client_title'] = clientTitle;
    data['envio'] = envio;
    data['productor'] = productor;
    data['date'] = date;
    return data;
  }
}
