import 'package:flutter/material.dart';
import 'package:gregory_house/main.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  // int _value = 1;
  bool image = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 155, 155),
        title: Text(
          "APPOINTMENTS",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                )),
          )
        ],
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Color.fromARGB(255, 241, 241, 241),
              height: 15,
              thickness: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InfoSection(
                  "Gregory House", "Nephrologist", "4 years", "95%"),
            ),
            Divider(
              color: Color.fromARGB(255, 241, 241, 241),
              height: 15,
              thickness: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Cost",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              "Session fee for 30 minutes",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 176, 174, 174),
                                  fontSize: 14),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          "\$80",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          "To Pay",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Spacer(),
                        Text(
                          "\$80",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 193, 186, 186),
                    height: 5,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            // foregroundColor: Colors.black,
                            backgroundColor:
                                Color.fromARGB(255, 236, 244, 246)),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 1,
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 58, 140, 155),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.percent,
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  "Use Promo Code",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Colors.black,
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 241, 241, 241),
              height: 15,
              thickness: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 15),
                    child: Text(
                      "PAYMENT OPTIONS",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Table(
                    border: TableBorder.all(
                        borderRadius: BorderRadius.circular(10)),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  image = !image;
                                });
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(image
                                            ? "assets/images/selected_image.jpg"
                                            : "assets/images/unselected_image.png"),
                                        radius: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "PayPal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  image = !image;
                                });
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(image
                                            ? "assets/images/unselected_image.png"
                                            : "assets/images/selected_image.jpg"),
                                        radius: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Credit Card",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // TableCell(child: Text("Credit Card")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 241, 241, 241),
              height: MediaQuery.of(context).size.height * 0.074,
              thickness: MediaQuery.of(context).size.height * 0.074,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Pay & Confirm",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.amber[700],
                  ),
                ),
              ),
            ),
          ],
        ),
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
              Container(
                child: FittedBox(
                  // fit: BoxFit.contain,
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
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
}
