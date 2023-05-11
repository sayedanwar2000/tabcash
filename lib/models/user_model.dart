class UserModel {
  String? message;
  Data? data;

  UserModel({this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? parentId;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  int? age;
  String? dob;
  String? address;
  String? gender;
  String? phone;
  String? nationalId;
  Null? photo;
  String? accessToken;
  bool? isChild;
  Null? creditCardNum;
  Null? creditCardPass;
  Null? creditCardExpirationDate;
  Null? restrictions;
  int? balance;
  String? sCreatedAt;
  String? sUpdatedAt;

  Data(
      {this.id,
        this.parentId,
        this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.age,
        this.dob,
        this.address,
        this.gender,
        this.phone,
        this.nationalId,
        this.photo,
        this.accessToken,
        this.isChild,
        this.creditCardNum,
        this.creditCardPass,
        this.creditCardExpirationDate,
        this.restrictions,
        this.balance,
        this.sCreatedAt,
        this.sUpdatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    age = json['age'];
    dob = json['dob'];
    address = json['address'];
    gender = json['gender'];
    phone = json['phone'];
    nationalId = json['national_id'];
    photo = json['photo'];
    accessToken = json['access_token'];
    isChild = json['is_child'];
    creditCardNum = json['credit_card_num'];
    creditCardPass = json['credit_card_pass'];
    creditCardExpirationDate = json['credit_card_expiration_date'];
    restrictions = json['restrictions'];
    balance = json['balance'];
    sCreatedAt = json['_created_at'];
    sUpdatedAt = json['_updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['age'] = this.age;
    data['dob'] = this.dob;
    data['address'] = this.address;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['national_id'] = this.nationalId;
    data['photo'] = this.photo;
    data['access_token'] = this.accessToken;
    data['is_child'] = this.isChild;
    data['credit_card_num'] = this.creditCardNum;
    data['credit_card_pass'] = this.creditCardPass;
    data['credit_card_expiration_date'] = this.creditCardExpirationDate;
    data['restrictions'] = this.restrictions;
    data['balance'] = this.balance;
    data['_created_at'] = this.sCreatedAt;
    data['_updated_at'] = this.sUpdatedAt;
    return data;
  }
}