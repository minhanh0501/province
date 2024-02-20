import 'package:flutter_test/flutter_test.dart';
import 'package:province/ward3.dart';
import 'package:province/ward2.dart';

void main() {
  group('Test AddressInfo:', () {
    test('constructor', () {
      // Arrange
      AddressInfo addressInfo = AddressInfo(
        province: Province(
          id: "01",
          name: "Thành phố Hà Nội",
          level: "Thành phố Trung ương",
        ),
        district: District(
          id: "001",
          name: "Quận Ba Đình",
          level: "Quận",
          provinceId: "01",
        ),
        ward: Ward(
          id: "00001",
          name: "Phường Phúc Xá",
          level: "Phường",
          districtId: "001",
          provinceId: "01",
        ),
        street: "123 ABC Street",
      );

      // Assert
      expect(addressInfo.province?.id, equals("01"));
      expect(addressInfo.province?.name, equals("Thành phố Hà Nội"));
      expect(addressInfo.province?.level, equals("Thành phố Trung ương"));
      expect(addressInfo.district?.id, equals("001"));
      expect(addressInfo.district?.name, equals("Quận Ba Đình"));
      expect(addressInfo.district?.level, equals("Quận"));
      expect(addressInfo.district?.provinceId, equals("01"));
      expect(addressInfo.ward?.id, equals("00001"));
      expect(addressInfo.ward?.name, equals("Phường Phúc Xá"));
      expect(addressInfo.ward?.level, equals("Phường"));
      expect(addressInfo.ward?.districtId, equals("001"));
      expect(addressInfo.ward?.provinceId, equals("01"));
      expect(addressInfo.street, equals("123 ABC Street"));
    });
  });

  group('Test UserInfo:', () {
    test('Constructor', () {
      // Arrange
      UserInfo userInfo = UserInfo(
        name: "Minh Anh",
        email: "minhanh01689@gmail.com",
        phoneNumber: '0389522271',
        birthDate: DateTime(2003, 1, 5),
        address: AddressInfo(
          province: Province(
            id: "01",
            name: "Thành phố Hà Nội",
            level: "Thành phố Trung ương",
          ),
          district: District(
            id: "001",
            name: "Quận Ba Đình",
            level: "Quận",
            provinceId: "01",
          ),
          ward: Ward(
            id: "00001",
            name: "Phường Phúc Xá",
            level: "Phường",
            districtId: "001",
            provinceId: "01",
          ),
          street: "123 ABC Street",
        ),
      );

      // Assert
      expect(userInfo.name, equals("Minh Anh"));
      expect(userInfo.email, equals("minhanh01689@gmail.com"));
      expect(userInfo.phoneNumber, equals("0389522271"));
      expect(userInfo.birthDate, equals(DateTime(2003, 1, 5)));
      expect(userInfo.address?.province?.id, equals("01"));
      expect(userInfo.address?.province?.name, equals("Thành phố Hà Nội"));
      expect(userInfo.address?.province?.level, equals("Thành phố Trung ương"));
      expect(userInfo.address?.district?.id, equals("001"));
      expect(userInfo.address?.district?.name, equals("Quận Ba Đình"));
      expect(userInfo.address?.district?.level, equals("Quận"));
      expect(userInfo.address?.district?.provinceId, equals("01"));
      expect(userInfo.address?.ward?.id, equals("00001"));
      expect(userInfo.address?.ward?.name, equals("Phường Phúc Xá"));
      expect(userInfo.address?.ward?.level, equals("Phường"));
      expect(userInfo.address?.ward?.districtId, equals("001"));
      expect(userInfo.address?.ward?.provinceId, equals("01"));
      expect(userInfo.address?.street, equals("123 ABC Street"));
    });
  });
}
