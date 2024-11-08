import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friflex_api/components/button.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/map.png"),
          Positioned(
            top: 165,
            left: 61,
            child: SvgPicture.asset(
              'assets/images/route.svg',
              // colorFilter: ColorFilter.mode(
              //   Colors.black,
              //   BlendMode.dstOver,
              // ),
              semanticsLabel: 'Acme Logo',
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 5,
                    width: 45,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Осталось 10 минут",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text("Везем заказ на Тверская, д.42"),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.green,
                          height: 4,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          color: Colors.green,
                          height: 4,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          color: Colors.green,
                          height: 4,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          color: Colors.green,
                          height: 4,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    color: Color(0xFFF9F2ED),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CustomCoffeeButton(
                          height: 56,
                          width: 56,
                          color: Color(0xFFFFFFFF),
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFC67C4E),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Курьер в пути'),
                              Flexible(
                                child: Text(
                                  'Мы доставим вам ваш кофе в кратчайшие сроки',
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        child: Image.asset('assets/images/courier.png'),
                      ),
                      const SizedBox(width: 12),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Петров Иван",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text("Ваш курьер"),
                        ],
                      ),
                      const Spacer(),
                      CustomCoffeeButton(
                        height: 46,
                        width: 46,
                        child: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
