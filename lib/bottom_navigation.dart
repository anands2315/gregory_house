import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final Function(int) onTap;

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  List<IconData> listOfIcons = [
    Icons.home,
    Icons.wysiwyg,
    Icons.calendar_today,
    Icons.settings,
  ];

  double containerWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.amber,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      onTap: (index) {
        widget.onTap(index);

        setState(() {
          containerWidth = index == widget.currentIndex ? 32.0 : 0.0;
        });
      },
      items: [
        BottomNavigationBarItem(icon: animatedIcon(0), label: " "),
        BottomNavigationBarItem(icon: animatedIcon(1), label: " "),
        BottomNavigationBarItem(icon: animatedIcon(2), label: " "),
        BottomNavigationBarItem(icon: animatedIcon(3), label: " "),
      ],
    );
  }

  Widget animatedIcon(int index) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 1500),
          curve: Curves.decelerate,
          width: index == widget.currentIndex ? 30 : 0,
          height: index == widget.currentIndex ? 4.0 : 0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(height: 8.0),
        Icon(
          listOfIcons[index],
          size: 32.0,
          // color: index == widget.currentIndex ? Colors.amber : Colors.black38,
        ),
      ],
    );
  }
}
