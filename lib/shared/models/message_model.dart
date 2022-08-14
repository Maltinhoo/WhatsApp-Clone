import 'dart:convert';

class Message {
  bool isMe;
  String text;
  String time;
  Message({
    required this.isMe,
    required this.text,
    required this.time,
  });

  Message copyWith({
    bool? isMe,
    String? text,
    String? time,
  }) {
    return Message(
      isMe: isMe ?? this.isMe,
      text: text ?? this.text,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'isMe': isMe});
    result.addAll({'text': text});
    result.addAll({'time': time});

    return result;
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      isMe: map['isMe'] ?? false,
      text: map['text'] ?? '',
      time: map['time'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source));

  @override
  String toString() => 'Message(isMe: $isMe, text: $text, time: $time)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Message &&
        other.isMe == isMe &&
        other.text == text &&
        other.time == time;
  }

  @override
  int get hashCode => isMe.hashCode ^ text.hashCode ^ time.hashCode;
}
