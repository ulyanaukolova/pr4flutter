import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  final String imagePath; // Путь к изображению
  final String title; // Название карточки
  final String description; // Описание карточки
  final int likes; // Количество лайков

  const SmallCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170, // Высота карточки
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Радиус изображения
        color: Colors.white, // Цвет фона карточки
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Изображение
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              imagePath, // Переданное изображение
              width: double.infinity,
              height: 110, // Высота изображения
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Название
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                // Описание
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                // Лайки и количество сессий
                Row(
                  children: [
                    const Icon(Icons.favorite, size: 9, color: Colors.red),
                    const SizedBox(width: 4),
                    Text(
                      '$likes',
                      style: const TextStyle(fontSize: 9, color: Colors.grey),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Sessions',
                      style: TextStyle(fontSize: 9, color: Colors.grey),
                    ),
                  ],
                ),
                // Кнопка Start
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      print('Start button pressed');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Start >',
                      style: TextStyle(fontSize: 9, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
