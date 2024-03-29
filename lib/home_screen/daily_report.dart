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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Symptoms of covid to watch out for",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/ss.png",
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.height * 0.14,
                    fit: BoxFit.fill,
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Symptoms of covid to watch out for",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/ss.png",
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: MediaQuery.of(context).size.height * 0.14,
                    fit: BoxFit.fill,
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
