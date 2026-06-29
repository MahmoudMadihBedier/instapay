import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/shared/custome_text.dart';

class BalanceSegment extends StatelessWidget {
  const BalanceSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_circle_left_rounded),
                  CustomeText(
                    text: "Profolio Value",
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  Icon(CupertinoIcons.chart_bar),
                ],
              ),
              Gap(5),
              Center(
                child: Text(
                  "₹54,375",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              Gap(5),
              Center(
                child: Text("In 3 Accounts", style: TextStyle(fontSize: 18)),
              ),
              Gap(15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF4EDFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomeText(
                            text: "Federel Bank",
                            fontSize: 26,
                            color: Colors.purple,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "1142524899652",
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "16,456.05",
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                        ],
                      ),
                    ),
                  ),
                  Gap(15),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffFFEDF1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomeText(
                            text: "States Bank",
                            fontSize: 26,
                            color: Color(0xffFA4D96),
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "1142524899652",
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "16,456.05",
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffEDFFF4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomeText(
                            text: "Best Bank",
                            fontSize: 26,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "1142524899652",
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                          CustomeText(
                            text: "16,456.05",
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          Gap(2),
                        ],
                      ),
                    ),
                  ),
                  Gap(15),
                  Expanded(child: Container()),
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(horizontal: 34, vertical: 10),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffEDEFFF),
                    ),
                    child: CustomeText(
                      text: "Add / Manage Accounts",
                      fontSize: 25,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
