import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/theme/style.dart';
import 'package:ticket_app/core/value/str_val.dart';
import 'package:ticket_app/modules/home/controller/home_controller.dart';
import 'package:ticket_app/modules/home/widget/home_drawer_widget.dart';
import 'package:ticket_app/route/pages.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: MyStyle.widgetStyle(MyString.appBarHome),
      drawer: HomeDrawerWidget.widgetHomeDrawer(context),
      body: Stack(children: [
        ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(NamedRoute.supportView);
              },
              child: Container(
                width: Get.width,
                //height: Get.height / 6,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: .1,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 3,
                              child: Text(
                                "موضوع",
                                style: theme.textTheme.titleLarge,
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              width: Get.width / 3,
                              child: Text(
                                "توضیحات",
                                style: theme.textTheme.titleMedium,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1400/12/12",
                          style: theme.textTheme.titleSmall,
                        )
                      ]),
                ),
              ),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(NamedRoute.addRoute);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
