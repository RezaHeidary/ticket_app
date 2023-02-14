import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/value/str_val.dart';
import 'package:ticket_app/modules/home/controller/home_controller.dart';

class HomeDrawerWidget {
  HomeDrawerWidget._();
  static var homeController = Get.find<HomeController>();
  static widgetHomeDrawer(context) {
    return Drawer(
      child: Obx(
        () => ListView(
          children: [
            ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyString.drawerTheme,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    children: [
                      Text(MyString.drawerLight),
                      Radio(
                        onChanged: (value) {
                          homeController.getLight();
                        },
                        groupValue: homeController.themeIndex.value,
                        value: 0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(MyString.drawerDark),
                      Radio(
                        onChanged: (value) {
                          homeController.getDark();
                        },
                        groupValue: homeController.themeIndex.value,
                        value: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: SizedBox(
                          width: Get.width - 175, child: const Text("خروج"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
