import 'package:flutter/material.dart';
import 'package:instapay/features/home/view/home.dart';

class VerifyScreen extends StatelessWidget {
  static String routename = "VerifyScreen";

  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          // Top section
          Stack(
            children: [
              Image.asset(
                "assets/images/Vector.png",
                width: double.infinity,
                height: 650,
                fit: BoxFit.cover,
              ),

              Positioned(
                top: 100,
                left: 50,
                child: Text(
                  "LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 100,
                child: Image.asset("assets/images/image 25.png", width: 250),
              ),

              Positioned(
                bottom: 30,
                left: 39,
                child: Image.asset("assets/images/Group 832.png", width: 250),
              ),
            ],
          ),

          Spacer(),

          // Phone input
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffF0F0FF),
                borderRadius: BorderRadius.circular(30),
              ),

              child: Row(
                children: [
                  const SizedBox(width: 25),

                  Text(
                    "+91",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(width: 30),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Button
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context,HomeScreen.routName );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
            
              height: 40,
            
              width: double.infinity,
            
              decoration: BoxDecoration(
                color: Color(0xff5059F6),
                borderRadius: BorderRadius.circular(35),
              ),
            
              child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),

          Text(
            "Your personal details are safe with us",
            style: TextStyle(color: Color(0xff7B85C7), fontSize: 16),
          ),

          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Read our Privacy Policy and Terms and\nConditions",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff7B85C7), fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
