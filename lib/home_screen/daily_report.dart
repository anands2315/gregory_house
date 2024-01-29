import 'package:flutter/material.dart';

class DailyReport extends StatelessWidget {
  const DailyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Daily Reports",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    ":",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms of covid to watch out\nfor",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "March 06, 09:01 PM",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/ss.png",
                    width: 140,
                    height: 125,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms of covid to watch out",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "for",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "March 06, 09:01 PM",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/ss.png",
                    width: 140,
                    height: 125,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
