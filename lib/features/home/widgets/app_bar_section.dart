import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:instapay/constanst/setting.dart';
import 'package:instapay/core/cubit/profile/profile_cubit.dart';
import 'package:instapay/features/profile/view/profile_screen.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({super.key});

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            // retun snakbar
            return ScaffoldMessenger(
              child:SnackBar(
                content: Text("Loading profile..."),
                duration: Duration(seconds: 2),
              ),
            );
          } else if (state is ProfileLoaded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.read<ProfileCubit>().loadProfile();
                    if (state is ProfileLoaded) {
                      Navigator.pushNamed(context,arguments: state, profileScreen );
                    }
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Image.asset("assets/images/avater1.png"),
                  ),
                ),
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
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
