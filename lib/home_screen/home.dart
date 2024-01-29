import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gregory_house/home_screen/calander.dart';
import 'package:gregory_house/home_screen/daily_report.dart';
import 'package:gregory_house/home_screen/service.dart';
import "app_bar.dart";
// import 'bottom_navigation.dart';

// import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 64, 155, 155)),
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: CupertinoSearchTextField(
                backgroundColor: Colors.white,
                itemSize: 25,
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.zero,
                prefixInsets: EdgeInsets.symmetric(horizontal: 12),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Color.fromARGB(255, 64, 155, 155),
                  ),
                ),
              ),
            ),
          ),
          Calendar(),
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),
          Service(),
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),
          // SizedBox(
          //   height: 10,
          // ),
          DailyReport(),
        ],
      ),
      // bottomNavigationBar: MyBottomNavigation(
      //   currentIndex: currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
