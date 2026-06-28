import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Homesegemaent/widgets/item_widget.dart';
import 'package:instapay/features/shared/custome_text.dart';

class SectionWidget2 extends StatelessWidget {
  const SectionWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
            children: [
              CustomeText(
                text: "Recharge & Bill Payment",
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
                text: "Mobile Recharge",
                mainColor: Color.fromARGB(255, 237, 253, 255),
                secondColor: Color.fromARGB(255, 196, 202, 246),
                icon: Icon(Icons.phone_android_sharp),
              ),
              Gap(5),
              ItemWidget(
                text: "Electricty Bill",
                mainColor: Color.fromARGB(255, 255, 252, 237),
                secondColor: Color.fromARGB(255, 246, 244, 196),
                icon: Icon(Icons.wb_sunny_outlined),
              ),
            ],
          ),
          Gap(3),
          Row(
            children: [
              ItemWidget(
                text: "DTH Recharge",
                mainColor: Color.fromARGB(255, 255, 237, 255),
                secondColor: Color.fromARGB(255, 246, 196, 245),
                icon: Icon(Icons.video_label_sharp),
              ),
              Gap(5),
              ItemWidget(
                text: "Self Transfer",
                mainColor: Color.fromARGB(255, 240, 237, 255),
                secondColor: Color.fromARGB(255, 196, 199, 246),
                icon: Icon(Icons.transform_sharp),
              ),
            ],
          ),
        
      ],
    );
  }
}
  