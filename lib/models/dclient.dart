class DClient {
  String? id;
  String? clientId;
  String? clientTitle;
  String? envio;
  String? productor;
  String? date;

  DClient(
      {this.id,
      this.clientId,
      this.clientTitle,
      this.envio,
      this.productor,
      this.date});

  DClient.fromJson(Map<String, dynamic> json) {
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
