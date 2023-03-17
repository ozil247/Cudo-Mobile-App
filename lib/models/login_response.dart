class LoginResponse {
  int? statusCode;
  Data? data;
  String? token;

  LoginResponse({
    this.statusCode,
    this.data,
    this.token,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as int?;
    data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;
    token = json['token'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['data'] = data?.toJson();
    json['token'] = token;
    return json;
  }
}

class Data {
  int? id;
  String? name;
  String? phone;
  String? email;
  dynamic emailVerifiedAt;
  String? type;
  String? createdAt;
  String? updatedAt;

  Data({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.emailVerifiedAt,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    phone = json['phone'] as String?;
    email = json['email'] as String?;
    emailVerifiedAt = json['email_verified_at'];
    type = json['type'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['phone'] = phone;
    json['email'] = email;
    json['email_verified_at'] = emailVerifiedAt;
    json['type'] = type;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}