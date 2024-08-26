import 'package:vm_service/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:provider/event_provider.dart';

class EventEditingPage extends StatefulWidget {
  final Event? event;

  const EventEditingPage({
    Key? key,
    this.event,
  }) : super(key: key);

  @override
  State<EventEditingPage> createState() => _EventEditingPageState();
}

class _EventEditingPageState extends State<EventEditingPage> {
  final _formKey = GlobalKey<FormState>();
  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(hours: 2));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
        actions: buildEditingActions(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[],
          ),
        ),
      )
    );
  }

List<Widget> buildEditingActions() {
  return [
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        //primary: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      icon: Icon(Icons.done),
      label: Text('SAVE'),
    ),
  ];
}
}


class Event {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  const Event({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.lightGreen,
    this.isAllDay = false,
  });
}