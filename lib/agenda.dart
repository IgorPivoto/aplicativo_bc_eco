import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 5, now.day);
var lastDay = DateTime(now.year, now.month + 5, now.day);

class Agenda extends StatefulWidget {
  const Agenda({Key? key}) : super(key: key);
  @override
  _Agenda createState() => _Agenda();
}

class _Agenda extends State<Agenda> {
  /*CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;*/

  @override
  Widget build(BuildContext context) {
    CalendarFormat format = CalendarFormat.twoWeeks;

    return Scaffold(
      appBar: AppBar(
        title: const Text('TableCalendar - Basics'),
        backgroundColor: Colors.green,
      ),
      body: TableCalendar(
        focusedDay: now,
        firstDay: firstDay,
        lastDay: lastDay,
        calendarFormat: format,
        startingDayOfWeek: StartingDayOfWeek.monday,
        availableCalendarFormats: const {
          CalendarFormat.month: 'mês',
          CalendarFormat.week: 'semana',
          CalendarFormat.twoWeeks: '2 semanas',
        },
        headerStyle: HeaderStyle(
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            size: 24,
            color: Colors.black,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            size: 24,
            color: Colors.black,
          ),
          headerPadding: EdgeInsets.zero,
          formatButtonVisible: true,
          formatButtonShowsNext: false,
          formatButtonDecoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
          ),
          formatButtonTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          titleTextStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          titleCentered: true,
        ),
        calendarStyle: const CalendarStyle(
          outsideDaysVisible: false,
          selectedDecoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.rectangle,
          ),
          selectedTextStyle: TextStyle(
            color: Color.fromARGB(255, 123, 162, 124),
          ),
          todayDecoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
