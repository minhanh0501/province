import 'package:province/ward2.dart';
import 'dart:convert';

class AddressInfo {
  Province? province;
  District? district;
  Ward? ward;
  String? street;

  AddressInfo({
    this.province,
    this.district,
    this.ward,
    this.street,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'province': province,
      'district': district,
      'ward': ward,
      'street': street,
    };
  }

  factory AddressInfo.fromMap(Map<String, dynamic> map) {
    return AddressInfo(
      province:
          map['province'] != null ? Province.fromMap(map['province']) : null,
      district:
          map['district'] != null ? District.fromMap(map['district']) : null,
      ward: map['ward'] != null ? Ward.fromMap(map['ward']) : null,
      street: map['street'] != null ? map['level'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressInfo.fromJson(String source) =>
      AddressInfo.fromMap(json.decode(source));

  @override
  String toString() =>
      'AddressInfo(province: $province, district: $district, ward: $ward, street: $street)';

  @override
  bool operator ==(covariant AddressInfo other) {
    if (identical(this, other)) return true;

    return other.province == province &&
        other.district == district &&
        other.ward == ward &&
        other.street == street;
  }

  @override
  int get hashCode =>
      province.hashCode ^ district.hashCode ^ ward.hashCode ^ street.hashCode;
}

class UserInfo {
  String? name;
  String? email;
  String? phoneNumber;
  DateTime? birthDate;
  AddressInfo? address;

  UserInfo({
    this.name,
    this.email,
    this.phoneNumber,
    this.birthDate,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate,
      'address': address,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phoneNumber:
          map['phoneNumber'] != null ? map['phoneNumber'] as String : null,
      birthDate:
          map['birthDate'] != null ? DateTime.parse(map['birthDate']) : null,
      address:
          map['address'] != null ? AddressInfo.fromMap(map['address']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserInfo(name: $name, email: $email, phoneNumber: $phoneNumber, birthDate: $birthDate, address: $address)';

  @override
  bool operator ==(covariant UserInfo other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.phoneNumber == phoneNumber &&
        other.birthDate == birthDate &&
        other.address == address;
  }

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      phoneNumber.hashCode ^
      birthDate.hashCode ^
      address.hashCode;
}

void main() {
  AddressInfo();
  UserInfo();
}
