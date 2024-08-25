import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(), // Adding a custom drawer
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF121212), Color(0xFF1C1C1E)], // Start and end colors for the gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: Icon(Icons.menu, color: Colors.white),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  Text(
                    'Hi, Michael 👋',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'How may I help\nyou today?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                shrinkWrap: true,
                children: [
                  buildGridTile(
                    context,
                    'Talk with Bot',
                    Icons.chat_bubble_outline,
                    Color(0xFFB4FF39),
                    TalkWithBotPage(),
                  ),
                  buildGridTile(
                    context,
                    'Chat with Bot',
                    Icons.chat,
                    Color(0xFF9B8AFB),
                    ChatWithBotPage(),
                  ),
                  buildGridTile(
                    context,
                    'Search by Image',
                    Icons.image_search,
                    Color(0xFFFFA3C4),
                    SearchByImagePage(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to see all history
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    buildHistoryTile(
                      context,
                      'I need some UI inspiration for dark themes.',
                      Icons.lightbulb_outline,
                      Color(0xFFB4FF39),
                    ),
                    buildHistoryTile(
                      context,
                      'Show me some color palettes for AI.',
                      Icons.palette_outlined,
                      Color(0xFF9B8AFB),
                    ),
                    buildHistoryTile(
                      context,
                      'What are the best mobile apps 2023?',
                      Icons.apps_outlined,
                      Color(0xFFFFA3C4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridTile(BuildContext context, String title, IconData icon, Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.black,
                size: 28,
              ),
              Spacer(),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHistoryTile(BuildContext context, String title, IconData icon, Color color) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(10),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.grey,
      ),
      onTap: () {
        // Handle history tile tap
      },
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF1C1C1E),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF2C2C2E),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            buildDrawerItem(
              context,
              Icons.home,
              'Home',
              HomePage(),
            ),
            buildDrawerItem(
              context,
              Icons.announcement,
              'Announcement',
              AnnouncementPage(),
            ),
            buildDrawerItem(
              context,
              Icons.account_circle,
              'Account',
              AccountPage(),
            ),
            buildDrawerItem(
              context,
              Icons.assignment,
              'Assignment',
              AssignmentPage(),
            ),
            buildDrawerItem(
              context,
              Icons.calendar_today,
              'Calendar',
              CalendarPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItem(BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

// Placeholder Pages for Drawer Items
class AnnouncementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcement'),
      ),
      body: Center(
        child: Text('Announcement Page'),
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}

class AssignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: Center(
        child: Text('Assignment Page'),
      ),
    );
  }
}

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Center(
        child: Text('Calendar Page'),
      ),
    );
  }
}
