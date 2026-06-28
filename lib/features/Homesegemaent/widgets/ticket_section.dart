import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/item_widget.dart';
import 'package:instapay/features/Homesegemaent/widgets/ticket_item.dart';
import 'package:instapay/features/shared/custome_text.dart';

class TicketSection extends StatelessWidget {
  const TicketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomeText(
              text: "Ticket Booking",
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
            TicketItem(
              text: "Movies",
               color: Color.fromARGB(255, 246, 161, 180),
               icon: Icon(CupertinoIcons.play_circle),
               ),
                TicketItem(
              text: "train",
               color: Color.fromARGB(255, 246, 161, 180),
               icon: Icon(CupertinoIcons.train_style_one),
               ),
                TicketItem(
              text: "Bus",
               color: Color.fromARGB(255, 246, 161, 180),
               icon: Icon(CupertinoIcons.bus),
               ),
                TicketItem(
              text: "Flight",
               color: Color.fromARGB(255, 246, 161, 180),
               icon: Icon(CupertinoIcons.paperplane),
               ),
                TicketItem(
              text: "Car",
               color: Color.fromARGB(255, 246, 161, 180),
               icon: Icon(CupertinoIcons.car_detailed),
               ),
          ],
        ),
      ],
    );
  }
}
