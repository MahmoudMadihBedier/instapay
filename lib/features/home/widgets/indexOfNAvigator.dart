import 'package:flutter/material.dart';

class Indexofnavigator extends StatelessWidget {
  final String text;
  final bool isSelect;
  const Indexofnavigator({super.key,required this.text,required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    text,
                            
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:isSelect? Color(0xff4D5DFA):Colors.grey.shade300,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                      color: isSelect? Color(0xff4D5DFA):Colors.grey.shade300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
  }
}