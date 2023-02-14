import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ticket_app/core/theme/theme.dart';

class MatrialAppService extends GetxService {
  GetStorage getStorage = GetStorage();
  getTheme() {
    return getStorage.read("theme") == "dark"
        ? Themes.darkTheme
        : Themes.lightTheme;
  }
}
