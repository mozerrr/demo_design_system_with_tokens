import 'package:flutter/material.dart';

class CoffeeButton extends StatelessWidget {
  const CoffeeButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,
        // padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}

class CoffeeIconButton extends StatelessWidget {
  const CoffeeIconButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: icon,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,

        // padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      ),
      label: Text(
        text,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}

class CustomCoffeeButton extends StatelessWidget {
  const CustomCoffeeButton({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    this.color = Colors.brown,
  });

  final Widget child;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        // decoration:,
        width: width,
        height: height,
        child: Center(child: child),
      ),
    );
  }
}
