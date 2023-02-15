import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/theme/style.dart';
import 'package:ticket_app/core/value/str_val.dart';
import 'package:ticket_app/modules/support/widget/btn_widget.dart';
import 'package:ticket_app/modules/support/widget/chat_box_widget.dart';

// ignore: must_be_immutable
class SupportView extends StatelessWidget {
  SupportView({super.key});
  var listuser = [
    "Hi",
    "Are you OK ",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: MyStyle.widgetStyle(MyString.supAppBar),
      body: Stack(
        children: [
          ListView.builder(
              itemBuilder: ((context, index) => index.isEven
                  ? ChatBoxWidget(
                      bodyText: listuser[index],
                      bubbleType: BubbleType.sendBubble,
                      colorBody: Colors.blue,
                      colorText: Colors.white,
                      alignment: Alignment.topRight,
                    )
                  : ChatBoxWidget(
                      bodyText: listuser[index],
                      bubbleType: BubbleType.receiverBubble,
                      colorBody: Colors.white54,
                      colorText: Colors.black,
                      alignment: Alignment.topLeft,
                    )),
              itemCount: listuser.length),
          Positioned(
            bottom: 10,
            right: 10,
            left: 10,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: Get.width / 1.5,
                      decoration: BoxDecoration(
                          color: theme.dividerColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextField(
                        style: theme.textTheme.bodyMedium,
                        decoration: InputDecoration(
                            hintText: MyString.inputText,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      )),
                  const BtnWidget(
                    iconData: Icons.open_in_browser_outlined,
                    keyName: "file",
                  ),
                  const BtnWidget(
                    keyName: "send",
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
