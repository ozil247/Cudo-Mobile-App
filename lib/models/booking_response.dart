class BookingResponse {
  bool? statusCode;
  Booking? booking;

  BookingResponse({
    this.statusCode,
    this.booking,
  });

  BookingResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'] as bool?;
    booking = (json['Booking'] as Map<String,dynamic>?) != null ? Booking.fromJson(json['Booking'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status_code'] = statusCode;
    json['Booking'] = booking?.toJson();
    return json;
  }
}

class Booking {
  int? userId;
  String? vendorId;
  String? name;
  String? phone;
  String? address;
  String? message;
  String? updatedAt;
  String? createdAt;
  int? id;

  Booking({
    this.userId,
    this.vendorId,
    this.name,
    this.phone,
    this.address,
    this.message,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  Booking.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'] as int?;
    vendorId = json['vendor_id'] as String?;
    name = json['name'] as String?;
    phone = json['phone'] as String?;
    address = json['address'] as String?;
    message = json['message'] as String?;
    updatedAt = json['updated_at'] as String?;
    createdAt = json['created_at'] as String?;
    id = json['id'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['user_id'] = userId;
    json['vendor_id'] = vendorId;
    json['name'] = name;
    json['phone'] = phone;
    json['address'] = address;
    json['message'] = message;
    json['updated_at'] = updatedAt;
    json['created_at'] = createdAt;
    json['id'] = id;
    return json;
  }
}