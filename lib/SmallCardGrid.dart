import 'package:flutter/material.dart';

class SmallCardGrid extends StatelessWidget {
  final List<Widget> smallCards; // Список виджетов (SmallCard)

  const SmallCardGrid({
    super.key,
    required this.smallCards, // Принимаем виджеты через конструктор
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Оборачиваем в ScrollView
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0), // Отступы по бокам
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 карточки в строке
            crossAxisSpacing: 16, // Отступы между карточками по горизонтали
            mainAxisSpacing: 16, // Отступы между карточками по вертикали
            childAspectRatio: 0.75, // Отношение ширины к высоте
          ),
          itemCount: smallCards.length, // Количество карточек
          itemBuilder: (context, index) {
            return smallCards[index]; // Возвращаем каждую карточку из списка
          },
        ),
      ),
    );
  }
}
