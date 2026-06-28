import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/shared/custome_text.dart';

class AvaterWidgets extends StatelessWidget {
  final String imagePath;
  final String name;
  const AvaterWidgets({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      child: Image.asset(imagePath,fit: BoxFit.cover,),
                    ),
                  ),
                  Gap(2),
                  CustomeText(
                    text: name,
                     fontSize: 14,
                      color: Colors.grey.shade400,
                       fontWeight: FontWeight.normal)
                ],
              ),
    );
  }
}