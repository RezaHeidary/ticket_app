import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/data/serveis/materialapp_service.dart';
import 'package:ticket_app/route/pages.dart';
import 'package:ticket_app/route/routs.dart';

void main() async {
  initApp();
  await Get.find<MatrialAppService>().getInit();

  runApp(const MyApp());
}

initApp() async {
  Get.put(MatrialAppService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final matrialAppService = Get.find<MatrialAppService>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("fa"),
      title: 'ticket',
      theme: matrialAppService.getTheme(),
      getPages: Pages.pages,
      initialRoute: NamedRoute.initialRoute,
    );
  }
}
