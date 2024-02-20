import 'package:flutter_test/flutter_test.dart';
import 'package:province/wart1.dart';

void main() {
  group('Test Ward:', () {
    test('constructor', () {
      // Arrange
      Ward ward = Ward(
        id: "005",
        name: "Phường Thụy Phương",
      );

      // Assert
      expect(ward.id, equals("005"));
      expect(ward.name, equals("Phường Thụy Phương"));
    });
  });
}
