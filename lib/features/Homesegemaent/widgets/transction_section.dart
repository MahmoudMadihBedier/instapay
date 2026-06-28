import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/avater_widgets.dart';
import 'package:instapay/features/shared/custome_text.dart';

class TransctionSection extends StatelessWidget {
  const TransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomeText(
              text: "Recent Transaction",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
            CustomeText(
              text: "more",
              fontSize: 16,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
              color: Colors.grey.shade400,
            ),
          ],
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AvaterWidgets(
              imagePath: "assets/images/avater1.png",
              name: "Banany"),
              AvaterWidgets(
              imagePath: "assets/images/avater2.png",
              name: "solgtr"),
              AvaterWidgets(
              imagePath: "assets/images/avater3.png",
              name: "monady"),
              AvaterWidgets(
              imagePath: "assets/images/avater1.png",
              name: "somake"),

          ],
        ),
      ],
    );
  }
}
