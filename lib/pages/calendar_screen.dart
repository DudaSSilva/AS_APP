import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);

var lastDay = DateTime(now.year, now.month + 3, now.day);

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          focusedDay: now,
          firstDay: firstDay,
          lastDay: lastDay,
          calendarFormat: format,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          availableCalendarFormats: const{
            CalendarFormat.month: 'mês',
            CalendarFormat.week: 'semana',
          },

          headerStyle: HeaderStyle(
            leftChevronIcon: const Icon(
              Icons.chevron_left,
              size: 24,
              color: Color(0xFFDD2E44),
            ),
            rightChevronIcon: const Icon(
              Icons.chevron_right,
              size: 24,
              color: Color(0xFFDD2E44),
            ),
            titleTextStyle: const TextStyle(
              color: Color(0xFFDD2E44),
              fontSize: 12,
            ),
            titleCentered: true,
          ),
        ),
      ],
    );
  }
}
