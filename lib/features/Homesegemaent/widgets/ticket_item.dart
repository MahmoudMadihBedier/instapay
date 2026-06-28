import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/shared/custome_text.dart';

class TicketItem extends StatelessWidget {
  final String text;
  final Color color;
  final Icon icon;
  const TicketItem({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height:70,
          width: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(10),
          child: icon,
        ),
        Gap(2),
        CustomeText(
          text: text,
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
