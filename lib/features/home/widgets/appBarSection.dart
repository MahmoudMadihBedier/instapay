import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Appbarsection extends StatefulWidget {
  const Appbarsection({super.key});

  @override
  State<Appbarsection> createState() => _AppbarsectionState();
}

class _AppbarsectionState extends State<Appbarsection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundColor: Colors.blue),
          Gap(25),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search Users,ID’s etc",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Icon(Icons.search_outlined),
                  ],
                ),
              ),
            ),
          ),
          Gap(25),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey.shade300,
            ),
            child: Icon(CupertinoIcons.bell),
          ),
        ],
      ),
    );
  }
}
