import 'dart:convert';

class Info {
  String name;
  String message;
  String time;
  String profilePic;
  Info({
    required this.name,
    required this.message,
    required this.time,
    required this.profilePic,
  });

  Info copyWith({
    String? name,
    String? message,
    String? time,
    String? profilePic,
  }) {
    return Info(
      name: name ?? this.name,
      message: message ?? this.message,
      time: time ?? this.time,
      profilePic: profilePic ?? this.profilePic,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'message': message});
    result.addAll({'time': time});
    result.addAll({'profilePic': profilePic});

    return result;
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      name: map['name'] ?? '',
      message: map['message'] ?? '',
      time: map['time'] ?? '',
      profilePic: map['profilePic'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) => Info.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Info(name: $name, message: $message, time: $time, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Info &&
        other.name == name &&
        other.message == message &&
        other.time == time &&
        other.profilePic == profilePic;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        message.hashCode ^
        time.hashCode ^
        profilePic.hashCode;
  }
}
