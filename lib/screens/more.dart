import 'package:flutter/material.dart';

class MorePage extends StatefulWidget{
  const MorePage({super.key});
  @override
  State<MorePage> createState() => _MorePageState();
}



class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E163A), // Dark background color
      appBar: AppBar(
        backgroundColor: Color(0xFF1E163A),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'More',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'), // Add profile image
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildMenuButton('Support Tab'),
          buildMenuButton('Election Features'),
          buildMenuButton('Media'),
          buildMenuButton('Contacts'),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/compass.png', // Add compass image
              height: 150,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF008B8B), // Button color
            padding: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
