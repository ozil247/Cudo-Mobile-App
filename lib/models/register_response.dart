class RegisterResponse {
  final bool? statusCode;
  final Data? data;
  final String? token;

  RegisterResponse({
    this.statusCode,
    this.data,
    this.token,
  });

  RegisterResponse.fromJson(Map<String, dynamic> json)
    : statusCode = json['status_code'] as bool?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
      token = json['token'] as String?;

  Map<String, dynamic> toJson() => {
    'status_code' : statusCode,
    'data' : data?.toJson(),
    'token' : token
  };
}

class Data {
  final String? type;
  final String? name;
  final String? email;
  final String? phone;
  final String? updatedAt;
  final String? createdAt;
  final int? id;

  Data({
    this.type,
    this.name,
    this.email,
    this.phone,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Data.fromJson(Map<String, dynamic> json)
    : type = json['type'] as String?,
      name = json['name'] as String?,
      email = json['email'] as String?,
      phone = json['phone'] as String?,
      updatedAt = json['updated_at'] as String?,
      createdAt = json['created_at'] as String?,
      id = json['id'] as int?;

  Map<String, dynamic> toJson() => {
    'type' : type,
    'name' : name,
    'email' : email,
    'phone' : phone,
    'updated_at' : updatedAt,
    'created_at' : createdAt,
    'id' : id
  };
}