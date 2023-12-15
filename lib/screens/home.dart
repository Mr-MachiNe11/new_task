import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pinkAccent.withOpacity(0.15),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'About You',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.pink.withOpacity(0.4)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Describe yourself...',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'Bio',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Add+',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink.withOpacity(0.4), // Upper half color
                  Colors.pinkAccent.withOpacity(0.15), // Lower half color
                ],
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                buildRow(Icons.home, 'Home'),
                buildRow(Icons.wifi, 'Followed by'),
                buildRow(Icons.work, 'Workplace'),
                buildRow(Icons.phone, 'Mobile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildRow(IconData icon, String text) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8.0),
        Text(text),
      ],
    ),
  );
}
