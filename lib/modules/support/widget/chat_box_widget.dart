import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:get/get.dart';

class ChatBoxWidget extends StatelessWidget {
  const ChatBoxWidget(
      {super.key,
      required this.bodyText,
      required this.colorText,
      required this.colorBody,
      required this.bubbleType,
      required this.alignment});
  final String bodyText;
  final Color colorText;
  final Color colorBody;
  final BubbleType bubbleType;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ChatBubble(
        clipper: ChatBubbleClipper1(type: bubbleType),
        alignment: alignment,
        margin: const EdgeInsets.only(top: 20),
        backGroundColor: colorBody,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: Get.width * 0.7,
          ),
          child: Text(
            bodyText,
            style: TextStyle(color: colorText),
          ),
        ),
      ),
    );
  }
}
