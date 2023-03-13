class LoginResponse {
  final int? statusCode;
  final Data? data;
  final String? token;

  LoginResponse({
    this.statusCode,
    this.data,
    this.token,
  });

  LoginResponse.fromJson(Map<String, dynamic> json)
    : statusCode = json['status_code'] as int?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
      token = json['token'] as String?;

  Map<String, dynamic> toJson() => {
    'status_code' : statusCode,
    'data' : data?.toJson(),
    'token' : token
  };
}

class Data {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  final dynamic emailVerifiedAt;
  final String? type;
  final String? createdAt;
  final String? updatedAt;

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

  Data.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      name = json['name'] as String?,
      phone = json['phone'] as String?,
      email = json['email'] as String?,
      emailVerifiedAt = json['email_verified_at'],
      type = json['type'] as String?,
      createdAt = json['created_at'] as String?,
      updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'phone' : phone,
    'email' : email,
    'email_verified_at' : emailVerifiedAt,
    'type' : type,
    'created_at' : createdAt,
    'updated_at' : updatedAt
  };
}