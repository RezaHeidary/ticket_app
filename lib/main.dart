import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ticket_app/data/serveis/materialapp_service.dart';
import 'package:ticket_app/route/pages.dart';
import 'package:ticket_app/route/routs.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MatrialAppService matrialAppService = Get.put(MatrialAppService());
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
