import 'package:flash/src/modules/home/service/home_service.dart';
import 'package:flash/src/routes/app_pages.dart';
import 'package:flash/src/utils/alert/alert_dialog.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  Future<void> logOut() async {
    AppDialog.showLoading();
    await HomeService.logOut();
    await Get.offAllNamed(Routes.FLASH);
  }

  Future<void> delete() async {
    AppDialog.showLoading();
    await HomeService.delete();
    await Get.offAllNamed(Routes.FLASH);
  }
}
