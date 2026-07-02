import 'package:flutter/material.dart';
import 'package:instapay/features/profile/shared/header_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            HeaderCard()
          ],
      )
      
    );
  }
}