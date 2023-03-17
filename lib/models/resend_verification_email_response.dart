class ResendVerificationEmailResponse {
  final bool? success;
  final User? user;

  ResendVerificationEmailResponse({
    this.success,
    this.user,
  });

  ResendVerificationEmailResponse.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'user' : user?.toJson()
  };
}

class User {
  final int? id;
  final int? role;
  final String? name;
  final String? email;
  final String? emailVerifiedAt;
  final dynamic picture;
  final String? profile;
  final dynamic about;
  final String? phone;
  final String? dob;
  final dynamic street;
  final dynamic city;
  final dynamic state;
  final int? countryId;
  final String? referralCode;
  final dynamic referralUserId;
  final String? status;
  final String? createdAt;
  final String? updatedAt;
  final String? otherNames;
  final String? subscriptionStatus;
  final int? balance;
  final dynamic bankName;
  final dynamic accountType;
  final dynamic accountNumber;

  User({
    this.id,
    this.role,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.picture,
    this.profile,
    this.about,
    this.phone,
    this.dob,
    this.street,
    this.city,
    this.state,
    this.countryId,
    this.referralCode,
    this.referralUserId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.otherNames,
    this.subscriptionStatus,
    this.balance,
    this.bankName,
    this.accountType,
    this.accountNumber,
  });

  User.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      role = json['role'] as int?,
      name = json['name'] as String?,
      email = json['email'] as String?,
      emailVerifiedAt = json['email_verified_at'] as String?,
      picture = json['picture'],
      profile = json['profile'] as String?,
      about = json['about'],
      phone = json['phone'] as String?,
      dob = json['dob'] as String?,
      street = json['street'],
      city = json['city'],
      state = json['state'],
      countryId = json['country_id'] as int?,
      referralCode = json['referral_code'] as String?,
      referralUserId = json['referral_user_id'],
      status = json['status'] as String?,
      createdAt = json['created_at'] as String?,
      updatedAt = json['updated_at'] as String?,
      otherNames = json['other_names'] as String?,
      subscriptionStatus = json['subscription_status'] as String?,
      balance = json['balance'] as int?,
      bankName = json['bank_name'],
      accountType = json['account_type'],
      accountNumber = json['account_number'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'role' : role,
    'name' : name,
    'email' : email,
    'email_verified_at' : emailVerifiedAt,
    'picture' : picture,
    'profile' : profile,
    'about' : about,
    'phone' : phone,
    'dob' : dob,
    'street' : street,
    'city' : city,
    'state' : state,
    'country_id' : countryId,
    'referral_code' : referralCode,
    'referral_user_id' : referralUserId,
    'status' : status,
    'created_at' : createdAt,
    'updated_at' : updatedAt,
    'other_names' : otherNames,
    'subscription_status' : subscriptionStatus,
    'balance' : balance,
    'bank_name' : bankName,
    'account_type' : accountType,
    'account_number' : accountNumber
  };
}