import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:instapay/core/cubit/home/navigator_cubit.dart';
import 'package:instapay/features/Blaancesegmantation/view/balance_segment.dart';
import 'package:instapay/features/Homesegemaent/view/home_segement.dart';
import 'package:instapay/features/home/widgets/appBarSection.dart';
import 'package:instapay/features/home/widgets/sagmantaion.dart';
import 'package:instapay/features/offerssegmantation/view/offer_segement.dart';
import 'package:instapay/features/rewordsegmantion/view/reword_segment.dart';

class HomeScreen extends StatelessWidget {
  static String routName = "homescreen";

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NavigatorCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 238, 238),

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

                    BlocBuilder < NavigatorCubit, NavigatorInitial>(
                      builder: (context, state) {
                        return SegmantationNavigator(
                          selctIndex: state.slectedIndex,
                          ontap: (value) {
                            state.slectedIndex=value;
                          },
                        );
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
