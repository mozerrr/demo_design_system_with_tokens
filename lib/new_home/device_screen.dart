import 'package:flutter/material.dart';

class DeviceScreen extends StatelessWidget {
  const DeviceScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    const size = Size(375, 812);
    return SizedBox.fromSize(
      size: size,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          size: size, // Установите нужные размеры экрана
        ),
        child: child,
      ),
    );
  }
}
