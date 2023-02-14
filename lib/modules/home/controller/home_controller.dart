import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ticket_app/core/theme/theme.dart';

class HomeController extends GetxController {
  var pageIndex = 0.obs;
  var themeIndex = 0.obs;

  GetStorage getStorage = GetStorage();

  getLight() {
    themeIndex.value = 0;
    Get.changeTheme(Themes.lightTheme);
    getStorage.write("theme", "light");
  }

  getDark() {
    themeIndex.value = 1;
    Get.changeTheme(Themes.darkTheme);
    getStorage.write("theme", "dark");
  }

  @override
  void onInit() {
    super.onInit();
    if (getStorage.read("theme") == "dark") {
      themeIndex.value = 1;
    } else {
      themeIndex.value = 0;
    }
  }
}
