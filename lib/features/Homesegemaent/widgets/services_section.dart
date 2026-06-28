import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/ticket_item.dart';
import 'package:instapay/features/shared/custome_text.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomeText(
              text: "More Services",
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TicketItem(
              text: "Invest",
               color: Color.fromARGB(255, 175, 161, 246),
               icon: Icon(CupertinoIcons.chart_bar),
               ),
                TicketItem(
              text: "Loans",
               color: Color.fromARGB(255, 175, 161, 246),
               icon: Icon(CupertinoIcons.line_horizontal_3_decrease_circle),
               ),
                TicketItem(
              text: "Insurance",
               color: Color.fromARGB(255, 175, 161, 246),
               icon: Icon(CupertinoIcons.heart),
               ),
                TicketItem(
              text: "Fastag",
               color: Color.fromARGB(255, 175, 161, 246),
               icon: Icon(CupertinoIcons.car_fill),
               ),
                
          ],
        ),
      ],
    );
  }
}
