import 'package:flutter/material.dart';
import 'BigCard.dart';
import 'SmallCard.dart';
import 'SmallCardGrid.dart';

class Meditate1 extends StatelessWidget {
  const Meditate1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meditate',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search icon pressed');
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[300],
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  TextButton(
                    onPressed: () {
                      print('All button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF039EA2),
                      minimumSize: const Size(40, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'All',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      print('Bible In a Year button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE6FEFF),
                      minimumSize: const Size(80, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Bible In a Year',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      print('Dailies button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE6FEFF),
                      minimumSize: const Size(80, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Dailies',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      print('Minutes button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE6FEFF),
                      minimumSize: const Size(80, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Minutes',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      print('November button pressed');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE6FEFF),
                      minimumSize: const Size(80, 32),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'November',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const BigCard(
              imagePath: 'assets/images/sun_and_moon.png',
              title: 'A Song of Moon',
              description: 'Start with the basics',
            ),
            const SizedBox(height: 16),
            const SmallCardGrid(
              smallCards: [
                SmallCard(
                  imagePath: 'assets/images/StarsSkyOrange.png',
                  title: 'Card 1',
                  description: 'Description for card 1',
                  likes: 120,
                ),
                SmallCard(
                  imagePath: 'assets/images/MoonSky.png',
                  title: 'Card 2',
                  description: 'Description for card 2',
                  likes: 150,
                ),
                SmallCard(
                  imagePath: 'assets/images/Eath.png',
                  title: 'Card 3',
                  description: 'Description for card 3',
                  likes: 200,
                ),
                SmallCard(
                  imagePath: 'assets/images/StarsSkyGreen.png',
                  title: 'Card 4',
                  description: 'Description for card 4',
                  likes: 180,
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
