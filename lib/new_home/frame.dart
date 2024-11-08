import 'package:flutter/material.dart';
import 'package:friflex_api/new_home/coffee_detail.dart';
import 'package:friflex_api/new_home/coffee_list.dart';
import 'package:friflex_api/new_home/device_screen.dart';
import 'package:friflex_api/new_home/order_tracking.dart';
import 'package:friflex_api/new_home/welcome.dart';

class Frame extends StatelessWidget {
  const Frame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DeviceScreen(child: WelcomeScreen()),
          SizedBox(width: 32),
          DeviceScreen(child: CoffeeListScreen()),
          SizedBox(width: 32),
          DeviceScreen(child: CoffeeDetailScreen(CoffeeListScreen.firstCoffee)),
          SizedBox(width: 32),
          DeviceScreen(child: OrderTrackingScreen()),
        ],
      ),
    );
  }
}
