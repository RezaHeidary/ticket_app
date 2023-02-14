import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/theme/style.dart';
import 'package:ticket_app/core/value/str_val.dart';
import 'package:ticket_app/modules/add/widget/add_widget.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
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
            const AddWidget(),
            const AddWidget(),
            const AddWidget(),
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
