import 'package:firebase_core/firebase_core.dart';
import 'package:flash/firebase_options.dart';
import 'package:flash/src/app/app.dart';
import 'package:flash/src/service/user_manage.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final isAuth = await userManage.init();
  runApp(MyApp(isAuth));
}
