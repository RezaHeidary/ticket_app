import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/theme/style.dart';
import 'package:ticket_app/core/value/str_val.dart';
import 'package:ticket_app/data/serveis/file_serveis.dart';
import 'package:ticket_app/modules/add/widget/text_filed_widget.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PicFileController());
    var theme = Theme.of(context);
    PicFileController picFileController = Get.put(PicFileController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyStyle.widgetStyle(MyString.btnAddTxt),
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: theme.cardColor,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: .1,
                        offset: Offset(0.0, 0.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4)),
                child: DropdownSearch<String>(
                  popupProps: const PopupProps.menu(
                    showSelectedItems: true,
                  ),
                  items: const ["Brazil", "Tunisia", 'Canada'],
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: MyString.headerBar,
                    ),
                  ),
                  onChanged: print,
                  selectedItem: "Brazil",
                ),
              ),
            ),
            AddTextWidget(
              title: MyString.btnAddTitle,
            ),
            AddTextWidget(
              title: MyString.btnAddBody,
              maxLine: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  picFileController.getFile();
                },
                child: Container(
                  width: Get.width,
                  height: Get.height / 12,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: .5,
                          blurRadius: .5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text(picFileController.fileName.value)),
                          const Icon(Icons.add_link_sharp)
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: 10,
          right: 10,
          left: 10,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(Get.width, Get.height / 13))),
            child: Text(MyString.btnAdd),
          ),
        ),
      ]),
    );
  }
}
