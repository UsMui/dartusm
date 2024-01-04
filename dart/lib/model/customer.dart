class Customer {
  int? id;
  String? fullname;
  DateTime? birthday;
  String? address;
  String? phonenumber;

  Customer({this.id, this.fullname, this.birthday, this.address, this.phonenumber});

  factory Customer.valueFromJson(Map<String, dynamic> json) {
    return Customer(
      id: json["id"] as int,
      fullname: json["fullname"] as String,
      birthday: DateTime.parse(json["birthday"] as String), // Sử dụng DateTime.parse để chuyển đổi từ chuỗi sang DateTime
      address: json["address"] as String,
      phonenumber: json["phonenumber"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullname": fullname,
      "birthday": birthday?.toIso8601String(), // Chuyển đổi DateTime sang chuỗi theo định dạng ISO 8601
      "address": address,
      "phonenumber": phonenumber,
    };
  }

  @override
  String toString() {
    return "id: $id, fullname: $fullname, birthday: $birthday, address: $address, phonenumber: $phonenumber";
  }
}
