import 'package:flutter/material.dart';

class CalendarPicker extends StatelessWidget {
  const CalendarPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarDatePicker(initialDate: DateTime(2050), firstDate: DateTime(2025), lastDate: DateTime(2045), onDateChanged: (v){});
  }
}