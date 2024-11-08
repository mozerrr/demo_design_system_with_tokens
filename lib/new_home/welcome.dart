// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:friflex_api/components/button.dart';
import 'package:friflex_api/components/image_from_firebase.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColoredBox(color: Colors.black),
          Align(
            alignment: Alignment.topCenter,
            child: ImageFromFirebase(imageUrl: "gs://friflex-api-meetup.appspot.com/images/coffee.png"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Влюбитесь в кофе в CoffeeLove!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Добро пожаловать в наш уютный кофейный уголок, где каждая чашка — это наслаждение.",
                    style: TextStyle(
                      // foregrounds/secondary
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: CoffeeButton(
                      text: 'Продолжить',
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
