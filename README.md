# CR Student Management System 📚

![image1](https://github.com/user-attachments/assets/b63e51ac-e384-466a-aa10-99e2044c802f)

### OUR PROBLEM STATEMENT:
# Open Track: Innovate Your Way 
(https://obvious-acrylic-f12.notion.site/Hack8all-Hackathon-4cecdcfce2a64d45afbb9d9404e36440)

API USED:
1. Flutter Calender API
2. Firebase API

apart from these libraries used were:
```ruby
  provider: ^6.0.0
  shared_preferences: ^2.0.15
  syncfusion_flutter_calendar: ^26.2.10
  intl: ^0.19.0


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  firebase_core: any
  cloud_firestore: ^5.2.1
  firebase_auth: ^5.1.4
  firebase_storage: ^12.1.3
  icons_plus: ^5.0.0
```


## Overview

The **CR Student Management System** is an innovative solution designed to streamline the responsibilities of Class Representatives (CRs). Built with Flutter, this app simplifies tasks such as making announcements, managing calendars, assigning tasks, and organizing timetables. It’s the perfect tool for CRs to keep their class informed and organized!

---

## Features 🚀

- **Announcements** 📢: Easily send out important messages to the entire class.
- **Calendar Management** 📅: Keep track of events, deadlines, and more.
- **Assignments** 📝: Manage and distribute assignments seamlessly.
- **Timetable** 🕒: Ensure everyone is aware of the class schedule.

---

## Screenshots 🖼️

Here are some screenshots of the app in action:

![image5-imageonline co-merged (1)](https://github.com/user-attachments/assets/a401de92-3fbd-4d67-8bd8-b671d25253d0)


![Announcements](assets/resources.png)
*The Announcements section where CRs can post updates for the class.*

![Calendar](assets/calendar.png)
*The Calendar view to track important dates and events.*

![Assignments](assets/more.png)
*Manage and view all assignments in one place.*

![Timetable](assets/timetable.png)
*Easily accessible timetable for the class.*

---

## Team 👥

This project was developed by:

- **Utso Sarkar**
- **Arya Talera**
- **Anee Jain**
- **Amitesh Sawoni**

---

## Code Snippets 💻

Here are some key code snippets from the app:

### Announcement Model
```dart
class Announcement {
  String title;
  String description;
  DateTime date;

  Announcement({required this.title, required this.description, required this.date});
}

```
### Calendar Widget

```dart
class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2020, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
    );
  }
}
```

### Timetable structure

```dart
class Timetable {
  String subject;
  String startTime;
  String endTime;

  Timetable({required this.subject, required this.startTime, required this.endTime});
}
```


### Architecture Overview

The CR Student Management System follows a modular architecture to ensure scalability and maintainability. Here’s a high-level overview:


1. Presentation Layer: Includes all the widgets and UI components.
2. Business Logic Layer: Contains the logic and state management.
3. Data Layer: Manages data flow, including API calls, local storage, etc.


### Usage 📲

1. Clone the repo
```dart
git clone https://github.com/yourusername/CR-Student-Management-System.git
```
2.Navigate to the project directory
```dart
cd CR-Student-Management-System
```
3.Install dependencies
```dart
flutter pub get
```
4.Run the App
```dart
flutter run
```

