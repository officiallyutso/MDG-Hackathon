import 'package:flutter/material.dart';
import 'package:login_signup/screens/calender.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  
  List<String> tasks = [];
  void _addTask() {
    setState(() {
      tasks.add('Task ${tasks.length + 1}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
        tooltip: 'Add Task',
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.orangeAccent,
      //   child: const Icon(Icons.add),
      // ),
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Hi, User_001 ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome 👋',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildTile(
                    context,
                    'Calendar',
                    const Color.fromARGB(255, 198, 216, 5),
                    '/calendar',
                    Icons.calendar_today,
                  ),
                  SizedBox(width: 20),
                  _buildTile(
                    context,
                    'TimeTable',
                    Colors.purpleAccent,
                    '/timetable',
                    Icons.access_time,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _buildTile(
                    context,
                    'Resources',
                    Colors.pinkAccent,
                    '/resources',
                    Icons.book,
                  ),
                  SizedBox(width: 20),
                  _buildMoreButton(context),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildAnnouncement('Announcement 01'),
                    _buildAnnouncement('Announcement 02'),
                    _buildAnnouncement('Announcement 03'),
                    _buildAnnouncement('Announcement 04'),
                    _buildAnnouncement('Announcement 05'),
                    _buildAnnouncement('Announcement 06'),
                    // Add more announcements here
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, String title, Color color, String route, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Calendar()),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.width / 2 - 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 6),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.white),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoreButton(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Navigate to more options screen
        },
        child: Container(
          height: MediaQuery.of(context).size.width / 2 - 30,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(0, 6),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'More',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnnouncement(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 6),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
    );
  }
}