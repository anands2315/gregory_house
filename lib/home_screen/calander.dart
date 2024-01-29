import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 64, 155, 155)),
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 365,
        itemBuilder: (BuildContext context, int index) {
          DateTime currentDate = DateTime.now().add(Duration(days: index));
          return CalendarItem(currentDate);
        },
      ),
    );
  }
}

class CalendarItem extends StatelessWidget {
  CalendarItem(this.date);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    bool isToday = DateTime.now().day == date.day &&
        DateTime.now().month == date.month &&
        DateTime.now().year == date.year;

    Color backgroundColor = getMonthColor(date.month);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getWeekdayName(date.weekday),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(49, 0, 0, 0),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(0, 2))
              ],
              shape: BoxShape.circle,
              color: isToday ? Colors.white : backgroundColor,
            ),
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                '${date.day}',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: isToday ? Color.fromARGB(255, 64, 155, 155) : null,
                ),
              ),
            ),
          ),
          SizedBox(height: 4.0),
        ],
      ),
    );
  }

  String getWeekdayName(int weekday) {
    switch (weekday) {
      case DateTime.sunday:
        return 'SU';
      case DateTime.monday:
        return 'MO';
      case DateTime.tuesday:
        return 'TU';
      case DateTime.wednesday:
        return 'WE';
      case DateTime.thursday:
        return 'TH';
      case DateTime.friday:
        return 'FR';
      case DateTime.saturday:
        return 'SA';
      default:
        return '';
    }
  }

  Color getMonthColor(int month) {
    switch (month) {
      case 1:
        return Color.fromARGB(255, 64, 155, 155);
      case 2:
        return Colors.white;

      default:
        return Colors.grey;
    }
  }
}
