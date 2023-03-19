import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/src/service/user_manage.dart';

class HomeService {
  static Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await userManage.removeUid();
  }

  static Future<void> delete() async {
    await FirebaseAuth.instance.currentUser!.delete();
    await userManage.removeUid();
  }
}
