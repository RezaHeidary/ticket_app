import 'package:get/get.dart';
import 'package:ticket_app/modules/add/view/add_view.dart';
import 'package:ticket_app/modules/home/view/home_view.dart';
import 'package:ticket_app/route/pages.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(name: NamedRoute.initialRoute, page: () => HomeView()),
    GetPage(name: NamedRoute.addRoute, page: () => const AddView()),
  ];
}
