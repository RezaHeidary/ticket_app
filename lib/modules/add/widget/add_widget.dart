import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: Get.width,
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Get.width / 2,
                  child: Text(
                    "موضوع",
                    style: theme.textTheme.titleLarge,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
                const Icon(
                  Icons.edit_outlined,
                  size: 25,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
