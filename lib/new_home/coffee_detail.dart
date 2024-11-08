// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:friflex_api/components/button.dart';

class CoffeeDetailScreen extends StatelessWidget {
  final Map<String, String> coffee;

  const CoffeeDetailScreen(this.coffee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomCoffeeButton(
                        height: 44,
                        width: 44,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Spacer(),
                      Text("Подробнее"),
                      Spacer(),
                      CustomCoffeeButton(
                        height: 44,
                        width: 44,
                        child: Icon(Icons.heart_broken),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Image.asset("assets/images/capuchino_full.png"),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coffee['name']!,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(coffee['description']!),
                        ],
                      ),
                      Spacer(),
                      CustomCoffeeButton(
                        height: 48,
                        width: 48,
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 8),
                      CustomCoffeeButton(
                        height: 48,
                        width: 48,
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 8),
                      CustomCoffeeButton(
                        height: 48,
                        width: 48,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // review
                  // Text(
                  //   "Цена: ${coffee['price']}",
                  //   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  // ),
                  const SizedBox(height: 40),
                  Text('Описание'),
                  const SizedBox(height: 12),
                  Text(
                    'Классический кофейный напиток на основе эспрессо и взбитого молока... Подробнее',
                  ),
                  const SizedBox(height: 24),
                  Text('Размер'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      CustomCoffeeButton(
                        width: 96,
                        height: 44,
                        child: Text('S'),
                      ),
                      SizedBox(width: 16),
                      CustomCoffeeButton(
                        width: 96,
                        height: 44,
                        child: Text('M'),
                      ),
                      SizedBox(width: 16),
                      CustomCoffeeButton(
                        width: 96,
                        height: 44,
                        child: Text('L'),
                      ),
                    ],
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                  //   child: const Text("Добавить в заказ"),
                  // ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 118,
              padding: EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
              ),
              color: Colors.white,
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Цена'),
                        Text('250 ₽'),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      width: 212,
                      height: 56,
                      child: CoffeeIconButton(
                        text: 'Добавить в заказ',
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
