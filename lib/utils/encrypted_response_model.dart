class EncryptedResponseModel {
  String? d;

  EncryptedResponseModel({this.d});

  EncryptedResponseModel.fromJson(Map<String, dynamic> json) {
    d = json['d'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['d'] = d;
    return data;
  }
}
