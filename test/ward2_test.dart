import 'package:flutter_test/flutter_test.dart';
import 'package:province/ward2.dart';

void main() {
  group('Test Province:', () {
    test('constructor', () {
      // Arrange
      Province province = Province(
        id: "01",
        name: "Thành phố Hà Nội",
        level: "Thành phố Trung ương",
      );

      // Assert
      expect(province.id, equals("01"));
      expect(province.name, equals("Thành phố Hà Nội"));
      expect(province.level, equals("Thành phố Trung ương"));
    });
  });

  group('Test District:', () {
    test('Constructor', () {
      // Arrange
      District district = District(
        id: "001",
        name: "Quận Ba Đình",
        level: "Quận",
        provinceId: "01",
      );

      // Assert
      expect(district.id, equals("001"));
      expect(district.name, equals("Quận Ba Đình"));
      expect(district.level, equals("Quận"));
      expect(district.provinceId, equals("01"));
    });
  });

  group('Test Ward:', () {
    test('Constructor', () {
      // Arrange
      Ward ward = Ward(
        id: "00001",
        name: "Phường Phúc Xá",
        level: "Phường",
        districtId: "001",
        provinceId: "01",
      );

      // Assert
      expect(ward.id, equals("00001"));
      expect(ward.name, equals("Phường Phúc Xá"));
      expect(ward.level, equals("Phường"));
      expect(ward.districtId, equals("001"));
      expect(ward.provinceId, equals("01"));
    });
  });
}
