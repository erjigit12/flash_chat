class Message {
  Message({
    required this.email,
    required this.sms,
  });

  final String email;
  final String sms;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'sms': sms,
    };
  }

  factory Message.fromJson(Map<String, dynamic> map) {
    return Message(
      email: map['email'] as String,
      sms: map['sms'] as String,
    );
  }
}
