import 'package:flutter/material.dart';

class AddTextWidget extends StatelessWidget {
  const AddTextWidget({super.key, required this.title, this.maxLine = 1});
  final String title;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
              color: theme.dividerColor,
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            maxLines: maxLine,
            style: theme.textTheme.bodyMedium,
            decoration: InputDecoration(
                hintText: title,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          )),
    );
  }
}
