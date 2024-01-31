import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:gregory_house/Home.dart';
import 'package:gregory_house/main.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    print("h = ${height}");
    print("h = ${width}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 155, 155),
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            "DOCTORS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.white,
          ),
          // onPressed: () => Navigator.pop(context),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Name()),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              ))
        ],
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 64, 155, 155)),
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
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
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "DOCTORS NEARBY",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 65, 155, 155)),
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
                InfoSection("Gregory House", "Nephrologist", " 3 years", "67%"),
                Appointment("80"),
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 241, 241, 241),
            height: 15,
            thickness: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "RECOMMENDED",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 65, 155, 155)),
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
                InfoSection("Gregory House", "Nephrologist", "5 yesrs", "81%"),
                Appointment("80"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Color.fromARGB(255, 193, 186, 186),
              height: 5,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                InfoSection("Gregory House", "Nephrologist", "1 yesrs", "52%"),
                Appointment("80")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Color.fromARGB(255, 193, 186, 186),
              height: 5,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                InfoSection("Gregory House", "Nephrologist", "1 years", "52%"),
                Appointment("80")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget InfoSection(
      String name, String specialty, String experience, String likes) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/images.jpg"),
          radius: 35,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  specialty,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 176, 174, 174),
                      fontSize: 14),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 162, 241, 248),
                    ),
                    child: Icon(Icons.medical_services,
                        size: 13, color: Colors.blue),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      experience,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 176, 174, 174),
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 247, 187, 171),
                    ),
                    child:
                        Icon(Icons.heart_broken, size: 13, color: Colors.red),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Text(
                      likes,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 176, 174, 174),
                          fontSize: 12),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget Appointment(String totalFee) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Total Fee",
                style: TextStyle(
                    color: const Color.fromARGB(255, 176, 174, 174),
                    fontSize: 12),
              ),
              Text(
                "\$${totalFee}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.71,
            child: ElevatedButton(
              onPressed: () {},
              child: FittedBox(
                child: Text(
                  "Make an appointment",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 8,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber[700],
                  fixedSize: Size(290, 55)),
            ),
          ),
        ],
      ),
    );
  }
}
