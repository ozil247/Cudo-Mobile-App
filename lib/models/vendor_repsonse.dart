class VendorResponse {
  bool? statusCode;
  List<Vendor>? vendor;

  VendorResponse({
    this.statusCode,
    this.vendor,
  });

  VendorResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    vendor = (json['Vendor'] as List?)?.map((dynamic e) => Vendor.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['Vendor'] = vendor?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Vendor {
  int? id;
  String? name;
  String? phone;
  String? email;
  dynamic emailVerifiedAt;
  String? type;
  String? createdAt;
  String? updatedAt;
  List<Categories>? categories;
  Profile? profile;

  Vendor({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.emailVerifiedAt,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.categories,
    this.profile,
  });

  Vendor.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    phone = json['phone'] as String?;
    email = json['email'] as String?;
    emailVerifiedAt = json['email_verified_at'];
    type = json['type'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    categories = (json['categories'] as List?)?.map((dynamic e) => Categories.fromJson(e as Map<String,dynamic>)).toList();
    profile = (json['profile'] as Map<String,dynamic>?) != null ? Profile.fromJson(json['profile'] as Map<String,dynamic>) : null;
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
    json['categories'] = categories?.map((e) => e.toJson()).toList();
    json['profile'] = profile?.toJson();
    return json;
  }
}

class Categories {
  int? id;
  int? userId;
  String? name;
  dynamic image;
  dynamic createdAt;
  dynamic updatedAt;

  Categories({
    this.id,
    this.userId,
    this.name,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    userId = json['user_id'] as int?;
    name = json['name'] as String?;
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['user_id'] = userId;
    json['name'] = name;
    json['image'] = image;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}

class Profile {
  int? id;
  int? userId;
  String? image;
  String? address;
  int? jobcategoryId;
  String? gender;
  String? location;
  String? bio;
  dynamic createdAt;
  dynamic updatedAt;

  Profile({
    this.id,
    this.userId,
    this.image,
    this.address,
    this.jobcategoryId,
    this.gender,
    this.location,
    this.bio,
    this.createdAt,
    this.updatedAt,
  });

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    userId = json['user_id'] as int?;
    image = json['image'] as String?;
    address = json['address'] as String?;
    jobcategoryId = json['jobcategory_id'] as int?;
    gender = json['gender'] as String?;
    location = json['location'] as String?;
    bio = json['bio'] as String?;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['user_id'] = userId;
    json['image'] = image;
    json['address'] = address;
    json['jobcategory_id'] = jobcategoryId;
    json['gender'] = gender;
    json['location'] = location;
    json['bio'] = bio;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    return json;
  }
}