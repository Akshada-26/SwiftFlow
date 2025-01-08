import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/user_dashboard.dart';
import 'screens/garage_dashboard.dart';
import 'screens/technician_dashboard.dart';
import 'screens/profile_page.dart';
import 'screens/obd_page.dart';
import 'screens/booking_page.dart';
import 'screens/maps_page.dart';
import 'screens/obd_scanner_page.dart';
import 'screens/chatbot_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Temporarily comment out Firebase initialization
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lagguu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/user_dashboard': (context) => UserDashboard(),
        '/garage_dashboard': (context) => GarageDashboard(),
        '/special agent_dashboard': (context) => TechnicianDashboard(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // Pages list
  final List<Widget> _pages = [
    UserDashboard(), // Home Page
    const ObdReportPage(), // OBD Report Page
    const BookingPage(), // Booking Page
    const ProfilePage(), // Profile Page
    const MapsPage(), // Maps Page
    const OBDScannerPage(), // OBD Scanner Page
    const ChatBotApp(), // ChatBot Page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Displays the current selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Fixes the bar position
        selectedItemColor: Colors.blue, // Active icon color
        unselectedItemColor: Colors.grey, // Inactive icon color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'OBD Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'OBD Scanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'ChatBot',
          ),
        ],
      ),
    );
  }
}