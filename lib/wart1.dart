import 'dart:convert';

class Ward {
  String? id;
  String? name;

  Ward({
    this.id,
    this.name,
  });

  Ward copyWith({
    String? id,
    String? name,
  }) {
    return Ward(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) => Ward.fromMap(json.decode(source));

  @override
  String toString() => 'Ward(id: $id, name: $name)';

  @override
  bool operator ==(covariant Ward other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

void main() {
  //var w = Ward(name: "Phường Thụy Phương", id: "005");
  //print(w); // In ra: Ward(id: 005, name: Phường Thụy Phương)
}
