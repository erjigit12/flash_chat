import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/src/data/message_model.dart';
import 'package:flash/src/service/user_manage.dart';

class HomeService {
  static Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await userManage.removeUid();
  }

  static Future<void> delete() async {
    await FirebaseAuth.instance.currentUser?.delete();
    await userManage.removeUid();
  }

  static Future<void> sendMessage(String sms) async {
    final sender = FirebaseAuth.instance.currentUser;
    if (sender != null) {
      final db = FirebaseFirestore.instance;
      final Message message = Message(
        email: sender.email!,
        sms: sms,
        dateTime: DateTime.now(),
      );
      await db.collection('message').add(message.toJson());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> streamMessage() {
    final db = FirebaseFirestore.instance;
    return db
        .collection('message')
        .orderBy('dateTime', descending: true)
        .snapshots();
  }
}
