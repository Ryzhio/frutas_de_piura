// ignore_for_file: non_constant_identifier_names

// class Campaign {
//   int? id;
//   String? user_id;
//   String? campaigns_title;

//   Campaign.fromMap(Map<dynamic, dynamic> map) {
//     id = int.parse(map['id']);
//     user_id = map['user_id'];
//     campaigns_title = map['campaigns_title'];
//   }
// }

class AllCampaigns {
  bool? success;
  String? message;
  List<Campaign>? campaign;

  AllCampaigns({this.success, this.message, this.campaign});

  AllCampaigns.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      campaign = <Campaign>[];
      json['data'].forEach((v) {
        campaign!.add(Campaign.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (campaign != null) {
      data['data'] = campaign!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Campaign {
  String? id;
  String? userId;
  String? campaignsTitle;
  String? date;

  Campaign({this.id, this.userId, this.campaignsTitle, this.date});

  Campaign.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    campaignsTitle = json['campaigns_title'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['campaigns_title'] = campaignsTitle;
    data['date'] = date;
    return data;
  }
}
