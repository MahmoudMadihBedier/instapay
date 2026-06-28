import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/item_widget.dart';
import 'package:instapay/features/Homesegemaent/widgets/section_widget.dart';
import 'package:instapay/features/Homesegemaent/widgets/section_widget2.dart';
import 'package:instapay/features/Homesegemaent/widgets/services_section.dart';
import 'package:instapay/features/Homesegemaent/widgets/ticket_section.dart';
import 'package:instapay/features/Homesegemaent/widgets/transction_section.dart';
import 'package:instapay/features/shared/custome_text.dart';

class HomeSegement extends StatefulWidget {
  const HomeSegement({super.key});

  @override
  State<HomeSegement> createState() => _HomeSegementState();
}

class _HomeSegementState extends State<HomeSegement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SectionWidget(),
          Gap(10),
          SectionWidget2(),
          Gap(10),
          TicketSection(),
          Gap(10),
          ServicesSection(),
          Gap(10),
          TransctionSection(),
          Gap(10),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4D5DFA),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: CustomeText(
                  text: "Recive Money",
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
