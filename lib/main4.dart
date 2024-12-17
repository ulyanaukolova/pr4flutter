import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mind Deep Relax UI",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: WhiteScreen(),
    );
  }
}

class WhiteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'lib/img/222.png',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Peter Mach',
              style: TextStyle(
                fontSize: 10,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Mind Deep Relax',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF039EA2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Play Next Session',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
            SingleChildScrollView(
              child: Column(
                children: [
                  _buildSessionRow(
                    iconColor: Color.fromARGB(255, 3, 98, 162),
                    title: 'Sweet Memories',
                    subtitle: 'December 29 Pre-Launch',
                  ),
                  _buildDivider(),
                  _buildSessionRow(
                    iconColor: Color(0xFF039EA2),
                    title: 'A Day Dream',
                    subtitle: 'December 29 Pre-Launch',
                  ),
                  _buildDivider(),
                  _buildSessionRow(
                    iconColor: Colors.orange,
                    title: 'Mind Explore',
                    subtitle: 'December 29 Pre-Launch',
                  ),
                  _buildDivider(),
                  SizedBox(height: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionRow({required Color iconColor, required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: iconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.zero,
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Divider(
        color: Colors.grey,
        thickness: 0.2,
      ),
    );
  }
}
