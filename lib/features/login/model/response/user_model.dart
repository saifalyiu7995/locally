class UserModel {
  int? status;
  String? message;
  User? details;

  UserModel({this.status, this.message, this.details});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    details = json['Details'] != null ? User.fromJson(json['Details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Status'] = status;
    data['Message'] = message;
    if (this.details != null) {
      data['Details'] = details!.toJson();
    }
    return data;
  }
}

class User {
  String? displayName;
  String? givenName;
  String? jobTitle;
  String? mobilePhone;
  String? surname;
  String? userPrincipalName;
  String? id;
  String? email;
  String? employeeID;
  String? employeeNumber;
  String? grade;
  bool? isExecutive;
  String? department;
  String? domain;
  String? oUName;
  String? businessUnit;

  User(
      {this.displayName,
      this.givenName,
      this.jobTitle,
      this.mobilePhone,
      this.surname,
      this.userPrincipalName,
      this.id,
      this.email,
      this.employeeID,
      this.employeeNumber,
      this.grade,
      this.isExecutive,
      this.department,
      this.domain,
      this.oUName,
      this.businessUnit});

  User.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    givenName = json['givenName'];
    jobTitle = json['jobTitle'];
    mobilePhone = json['mobilePhone'];
    surname = json['surname'];
    userPrincipalName = json['userPrincipalName'];
    id = json['id'];
    email = json['Email'];
    employeeID = json['EmployeeID'];
    employeeNumber = json['EmployeeNumber'];
    grade = json['Grade'];
    isExecutive = json['IsExecutive'];
    department = json['Department'];
    domain = json['Domain'];
    oUName = json['OUName'];
    businessUnit = json['BusinessUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['displayName'] = displayName;
    data['givenName'] = givenName;
    data['jobTitle'] = jobTitle;
    data['mobilePhone'] = mobilePhone;
    data['surname'] = surname;
    data['userPrincipalName'] = userPrincipalName;
    data['id'] = id;
    data['Email'] = email;
    data['EmployeeID'] = employeeID;
    data['EmployeeNumber'] = employeeNumber;
    data['Grade'] = grade;
    data['IsExecutive'] = isExecutive;
    data['Department'] = department;
    data['Domain'] = domain;
    data['OUName'] = oUName;
    data['BusinessUnit'] = businessUnit;
    return data;
  }
}
