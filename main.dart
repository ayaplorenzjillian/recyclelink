import 'package:flutter/material.dart';
import 'pages/schedpickup.dart';
import 'pages/user.dart';
import 'pages/fact.dart';
import 'pages/history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color customColor = Color.fromARGB(255, 216, 253, 216); // Custom background color

    return MaterialApp(
      title: 'Home',
      routes: {
        '/history': (context) => const History(),
        '/fact': (context) => const Fact(),
        '/schedpickup': (context) => const PickUp(),
        '/user': (context) => const UserPage(),
      },
      home: Scaffold(
        backgroundColor: Colors.white, // Set scaffold background to white
        body: Container(
          color: customColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the items
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    ' ',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/jeeplogo.png'),
                        const SizedBox(height: 10),
                        const Text(
                          'WELCOME USER!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const DashboardItem(title: 'Schedule PickUp', icon: Icons.car_rental, route: '/schedpickup'),
                const DashboardItem(title: 'View PickUp History', icon: Icons.history_rounded, route: '/history'),
                const DashboardItem(title: 'User', icon: Icons.account_circle_rounded, route: '/user'),
                const DashboardItem(title: 'Fact Check', icon: Icons.check, route: '/fact'), // Updated icon for clarity
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const DashboardItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Container(
        width: 200, // Set a specific width for each dashboard item
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5), // Set background color with opacity
          borderRadius: BorderRadius.circular(8), // Optional: round the corners
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, // Align icon and text
              children: [
                Icon(
                  icon,
                  size: 30,
                ),
                const SizedBox(width: 20), // Add space between icon and text
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.start, // Align text to the start
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
