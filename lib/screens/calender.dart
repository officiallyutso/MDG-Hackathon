import 'package:flutter/material.dart';
import 'package:login_signup/widgets/calendar_widget.dart';
import 'package:login_signup/page/event_editing_page.dart';


class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => EventEditingPage()),
  );
        }
      ),
    );
  }
}

