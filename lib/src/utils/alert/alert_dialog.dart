import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppDialog {
  static void showLoading() {
    Get.defaultDialog(content: const CupertinoActivityIndicator());
  }

  Future<void> alertDialog(String content, String title) async {
    Get.defaultDialog(
      content: Text(content, textAlign: TextAlign.center),
      title: title,
    );
  }
}
