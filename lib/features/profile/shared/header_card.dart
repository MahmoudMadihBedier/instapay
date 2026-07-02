import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:instapay/features/shared/custome_text.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
      child: Material(
        elevation: 15,
        shadowColor: const Color(0xff4D5DFA).withOpacity(.3),
        borderRadius: BorderRadius.circular(35),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            children: [
              // Header
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: const AssetImage(
                      'assets/images/avater1.png',
                    ),
                  ),

                  const Gap(20),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomeText(
                                text: 'Elsa',
                                fontSize: 34,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const Gap(10),

                            const Icon(
                              Icons.workspace_premium,
                              color: Color(0xffF5B800),
                              size: 32,
                            ),
                          ],
                        ),

                        const Gap(6),
                        Container(
                          width: 52,
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color(0xff5362F5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        const Gap(14),
                        CustomeText(
                          text: 'Level 4 Ace Member',
                          fontSize: 16,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.normal,
                        ),

                        const Gap(14),
                        Row(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: LinearProgressIndicator(
                                  value: .85,
                                  minHeight: 14,
                                  backgroundColor: const Color(0xffEEF0FF),
                                  color: const Color(0xff5362F5),
                                ),
                              ),
                            ),

                            const Gap(12),
                            CustomeText(
                              text: 'Lv 5',
                              fontSize: 14,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        const Gap(8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomeText(
                            text: '85%',
                            fontSize: 12,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.8,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.05),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 22,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),

              const Gap(30),

              // Stats
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: buildStat('1,208', 'Transactions'),
                  ),

                  const Gap(8),
                  Flexible(
                    fit: FlexFit.tight,
                    child: buildStat('726', 'Points'),
                  ),

                  const Gap(8),
                  Flexible(fit: FlexFit.tight, child: buildStat('8', 'Rank')),

                  const Gap(12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffEEF0FF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff4D5DFA),
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Gap(8),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Color(0xff4D5DFA),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Gap(26),

              // Bottom buttons
              Row(
                children: [
                  actionButton('Edit Profile', Icons.person_outline),

                  const Gap(12),
                  actionButton('Settings', Icons.tune),

                  const Gap(12),
                  actionButton('Share', Icons.share),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStat(String number, String title) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 45,
            color: Color(0xff5362F5),
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
        ),
      ],
    );
  }

  Widget actionButton(String title, IconData icon) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xffEEF0FF),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const Gap(12),

            Icon(icon, size: 24, color: Colors.grey.shade700),
          ],
        ),
      ),
    );
  }
}
