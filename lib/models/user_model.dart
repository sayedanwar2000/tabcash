class UserModel {
  String? message;
  String? error;
  Data? data;

  UserModel({this.message, this.error, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    error = json['error'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? password;
  String? age;
  String? address;
  String? gender;
  String? phone;
  String? dob;
  String? nationalId;

  Data(
      {this.firstName,
        this.lastName,
        this.username,
        this.email,
        this.password,
        this.age,
        this.address,
        this.gender,
        this.phone,
        this.dob,
        this.nationalId});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    age = json['age'];
    address = json['address'];
    gender = json['gender'];
    phone = json['phone'];
    dob = json['dob'];
    nationalId = json['nationalId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['age'] = this.age;
    data['address'] = this.address;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['dob'] = this.dob;
    data['nationalId'] = this.nationalId;
    return data;
  }
}