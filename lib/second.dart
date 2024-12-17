import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secrets of Atlantis',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/img/kit.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.orange,
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Secrets of Atlantis',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.orange,
                        side: BorderSide(color: Colors.orange, width: 2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Follow'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 56, 28, 131),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'lib/img/1png.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Codin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                               Ы   ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 27, 9, 75),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Host',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwater myths to exploring history.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 27, 9, 75),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '4.8',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    size: 14,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '(10)',
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 134, 147, 153),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 27, 9, 75),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                'Fantasy',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Transform.translate(
                                  offset: Offset(0, 0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('lib/img/k1.jpg'),
                                    radius: 18,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(20, 0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('lib/img/k2.jpg'),
                                    radius: 18,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(40, 0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('lib/img/k3.jpg'),
                                    radius: 18,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(60, 0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('lib/img/k4.jpg'),
                                    radius: 18,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(80, 0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 18,
                                    child: Text(
                                      '+10',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.radio_button_checked,
                              color: Colors.red,
                              size: 18,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Live',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Желтый прямоугольный блок с закругленными углами
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'lib/img/2.png',
                      width: 85,
                      height: 85,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Invite your friends to join',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
