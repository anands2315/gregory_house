import 'package:flutter/material.dart';
import 'package:gregory_house/models/service_model.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Row(
              children: [
                Text(
                  "SERVICES",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 65, 155, 155)),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleIcon(
                      color: Color.fromARGB(255, 136, 185, 192),
                      icon: Icons.coronavirus_outlined,
                      bgc: Color.fromARGB(255, 187, 209, 212),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Covid - 19",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleIcon(
                      color: Color.fromARGB(255, 136, 185, 192),
                      icon: Icons.personal_injury_rounded,
                      bgc: Color.fromARGB(255, 187, 209, 212),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Doctors",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleIcon(
                      color: Color.fromARGB(255, 136, 185, 192),
                      icon: Icons.local_hospital_outlined,
                      bgc: Color.fromARGB(255, 187, 209, 212),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hospital",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleIcon(
                      color: Color.fromARGB(255, 136, 185, 192),
                      icon: Icons.medication_outlined,
                      bgc: Color.fromARGB(255, 187, 209, 212),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Medicines",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
