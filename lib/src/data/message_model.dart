class Message {
  Message({
    required this.email,
    required this.sms,
    required this.dateTime,
    this.isMy,
  });

  final String email;
  final String sms;
  final DateTime dateTime;
  bool? isMy;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'sms': sms,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'isMy': isMy,
    };
  }

  factory Message.fromJson(Map<String, dynamic> map) {
    return Message(
      email: map['email'] as String,
      sms: map['sms'] as String,
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int),
      isMy: map['isMy'] != null ? map['isMy'] as bool : null,
    );
  }
}
