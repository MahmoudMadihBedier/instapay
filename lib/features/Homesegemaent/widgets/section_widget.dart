import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/item_widget.dart';
import 'package:instapay/features/shared/custome_text.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            children: [
              CustomeText(
                text: "Money Transfer",
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
            children: [
              ItemWidget(
                text: "Scan QR Code",
                mainColor: Color(0xffEDEFFF),
                secondColor: Color.fromARGB(255, 196, 202, 246),
                icon: Icon(Icons.qr_code_scanner),
              ),
              Gap(5),
              ItemWidget(
                text: "Send To Contact",
                mainColor: Color.fromARGB(255, 237, 255, 251),
                secondColor: Color.fromARGB(255, 196, 246, 213),
                icon: Icon(Icons.perm_contact_calendar_outlined),
              ),
            ],
          ),
          Gap(3),
          Row(
            children: [
              ItemWidget(
                text: "Send To bank",
                mainColor: Color.fromARGB(255, 247, 255, 237),
                secondColor: Color.fromARGB(255, 233, 246, 196),
                icon: Icon(Icons.store_mall_directory_outlined),
              ),
              Gap(5),
              ItemWidget(
                text: "Self Transfer",
                mainColor: Color.fromARGB(255, 253, 237, 255),
                secondColor: Color.fromARGB(255, 223, 196, 246),
                icon: Icon(Icons.transform_sharp),
              ),
            ],
          ),
        
      ],
    );
  }
}