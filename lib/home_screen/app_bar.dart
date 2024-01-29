import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 65, 155, 155),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "👋", // Use the emoji directly in the Text widget
                style: TextStyle(fontSize: 20),
              ),
              // Icon(
              //   Icons.home,
              //   color: Colors.white,
              //   size: 20,
              // ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Hello,",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
          Text(
            "Gregory House",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/images.jpg"),
            radius: 20,
          ),
        )
      ],
      toolbarHeight: 80.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.0);
}
