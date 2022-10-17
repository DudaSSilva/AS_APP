import 'package:flutter/material.dart';

class PacoteCalendar extends StatefulWidget {

  const PacoteCalendar({
    Key? key,
  }) : super(key: key);

  @override
  _PacoteCalendarState createState() => _PacoteCalendarState();
}

class _PacoteCalendarState extends State<PacoteCalendar> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    theme: new ThemeData(
    primaryColor: const Color(0xFF02BB9F),
    primaryColorDark: const Color(0xFF167F67),
    accentColor: const Color(0xFF167F67),
    );
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
    body: SafeArea(
      child: CalendarPage2(),
    ),
    );
  }
}

