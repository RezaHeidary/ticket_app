import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/data/serveis/file_serveis.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget(
      {super.key, this.iconData = Icons.send, required this.keyName});
  final IconData iconData;
  final String keyName;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var picController = Get.put(PicFileController());

    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onTap: () {
        if ("file" == keyName) {
          picController.getFile();
        }
      },
      child: Container(
        width: Get.width / 9,
        height: Get.height / 15,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ], color: theme.cardColor, borderRadius: BorderRadius.circular(100)),
        child: Icon(iconData),
      ),
    );
  }
}
