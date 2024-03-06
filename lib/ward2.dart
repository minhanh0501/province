import 'dart:convert';
//import 'package:flutter/services.dart';
//import 'package:flutter/material.dart';

class Province {
  final String? id;
  final String? name;
  final String? level;

  Province({
    this.id,
    this.name,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
    };
  }

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Province.fromJson(String source) =>
      Province.fromMap(json.decode(source));

  @override
  String toString() => 'Province(id: $id, name: $name, level:$level)';

  @override
  bool operator ==(covariant Province other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.level == level;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ level.hashCode;
}

class District {
  final String? id;
  final String? name;
  final String? level;
  final String? provinceId;

  District({
    this.id,
    this.name,
    this.level,
    this.provinceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'provinceId': provinceId,
    };
  }

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory District.fromJson(String source) =>
      District.fromMap(json.decode(source));

  @override
  String toString() =>
      'District(id: $id, name: $name, level: $level, provinceId: $provinceId)';

  @override
  bool operator ==(covariant District other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.level == level &&
        other.provinceId == provinceId;
  }

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ level.hashCode ^ provinceId.hashCode;
}

class Ward {
  final String? id;
  final String? name;
  final String? level;
  final String? provinceId;
  final String? districtId;

  Ward({
    this.id,
    this.name,
    this.level,
    this.districtId,
    this.provinceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'provinceId': provinceId,
      'districtId': districtId,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
      districtId:
          map['districtId'] != null ? map['districtId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) => Ward.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ward(id: $id, name: $name, level: $level, districtId: $districtId, provinceId: $provinceId)';
  }

  @override
  bool operator ==(covariant Ward other) {
    if (identical(this, other)) return true;
    return other.id == id &&
        other.name == name &&
        other.level == level &&
        other.provinceId == provinceId &&
        other.districtId == districtId;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      level.hashCode ^
      provinceId.hashCode ^
      districtId.hashCode;
}
