import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SegmantationNavigator extends StatefulWidget {
  final int selctIndex;
  final ValueChanged<int> ontap;

  const SegmantationNavigator({
    super.key,
    required this.selctIndex,
    required this.ontap,
  });

  @override
  State<SegmantationNavigator> createState() => _SegmantationNavigatorState();
}

class _SegmantationNavigatorState extends State<SegmantationNavigator> {
  late int selectedIndex;

  final List<String> titles = ["home", "Balance", "Offers", "Rewards"];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selctIndex;
  }

  @override
  void didUpdateWidget(covariant SegmantationNavigator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selctIndex != widget.selctIndex) {
      selectedIndex = widget.selctIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(titles.length, (index) {
          final isSelected = selectedIndex == index;

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: GestureDetector(
                onTap: () => widget.ontap(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(4),
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 18,
                        color: isSelected
                            ? const Color(0xff4D5DFA)
                            : Colors.grey.shade300,
                        fontWeight: FontWeight.w700,
                      ),
                      child: Text(titles[index]),
                    ),
                    const Gap(6),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        color: isSelected
                            ? const Color(0xff4D5DFA)
                            : Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
