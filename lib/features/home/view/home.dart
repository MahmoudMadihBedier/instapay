import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/Blaancesegmantation/view/balance_segment.dart';
import 'package:instapay/features/Homesegemaent/view/home_segement.dart';
import 'package:instapay/features/home/widgets/appBarSection.dart';
import 'package:instapay/features/home/widgets/sagmantaion.dart';
import 'package:instapay/features/offerssegmantation/view/offer_segement.dart';
import 'package:instapay/features/rewordsegmantion/view/reword_segment.dart';

class HomeScreen extends StatefulWidget {
  static String routName = "homescreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          // Top section
          Material(
            elevation: 10,

            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),

            child: Container(
              height: 180,

              child: Column(
                children: [
                  const Gap(80),

                  Appbarsection(),

                  SegmantationNavigator(
                    selctIndex: selectedindex,
                    ontap: (value) {
                      setState(() {
                        selectedindex = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),

          // Page content
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [widgetsselect[selectedindex]]),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> widgetsselect = [
  HomeSegement(),
  BalanceSegment(),
  OfferSegement(),
  RewordSegment(),
];
Widget segmentWidget(int index) {
  return widgetsselect[index];
}
