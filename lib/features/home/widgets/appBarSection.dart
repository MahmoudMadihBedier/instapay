import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:instapay/constanst/setting.dart';
import 'package:instapay/core/cubit/profile/profile_cubit.dart';

class Appbarsection extends StatefulWidget {
  const Appbarsection({super.key});

  @override
  State<Appbarsection> createState() => _AppbarsectionState();
}

class _AppbarsectionState extends State<Appbarsection> {
  
  Widget _loaderHeader(){
    return SpinKitThreeBounce(
                      itemBuilder: (context, index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: index.isEven ? Colors.blue : Colors.grey,
                          ),
                        );
                      },
                    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return _loaderHeader();
          } else if (state is ProfileLoaded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.read<ProfileCubit>().loadProfile();
                    Navigator.pushNamed(context, profileScreen);
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
