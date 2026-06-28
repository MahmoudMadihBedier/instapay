import 'package:flutter/material.dart';
import 'package:instapay/features/shared/custome_text.dart';

class ItemWidget extends StatelessWidget {
  final String text;
  final Color mainColor;
  final Color secondColor;
  final Icon icon;
  const ItemWidget({
    super.key,
    required this.text,
    required this.mainColor,
    required this.secondColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: icon,
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: CustomeText(
                  text: text,
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
