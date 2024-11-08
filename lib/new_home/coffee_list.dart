import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friflex_api/components/button.dart';
import 'package:friflex_api/components/image_from_firebase.dart';

class CoffeeListScreen extends StatelessWidget {
  static const firstCoffee = {
    'name': 'Капучино',
    'description': 'Пышная пенка',
    'price': '250 ₽'
  };
  static const List<Map<String, String>> coffees = [
    firstCoffee,
    {'name': 'Флэт Уайт', 'description': 'Крепко и вкусно', 'price': '250 ₽'},
    {'name': 'Маккиато', 'description': 'Можно и холодный', 'price': '250 ₽'},
    {'name': 'Мокко', 'description': 'Можно и холодный', 'price': '250 ₽'},
  ];

  const CoffeeListScreen({super.key});

  static const _screenPadding = EdgeInsets.symmetric(horizontal: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: _screenPadding,
              child: Text('Адрес кофейни'),
            ),
            Padding(
              padding: _screenPadding,
              child: Text('г. Москва, проспект Ленина, 57 '),
            ),
            SizedBox(height: 24),
            Padding(
              padding: _screenPadding,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Найти свой кофе...',
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  CustomCoffeeButton(
                    height: 56,
                    width: 56,
                    child: SvgPicture.asset('assets/icons/24x24/filters.svg'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 36,
              child: ListView(
                padding: _screenPadding,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.brown,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('Все кофе'),
                  ),
                  SizedBox(width: 12),
                  Container(
                    color: Colors.white10,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('Латте'),
                  ),
                  SizedBox(width: 12),
                  Container(
                    color: Colors.white10,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('Американо'),
                  ),
                  SizedBox(width: 12),
                  Container(
                    color: Colors.white10,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('Капучино'),
                  ),
                  SizedBox(width: 12),
                  Container(
                    color: Colors.white10,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: Text('Флэт Уайт'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Flexible(
              child: Padding(
                padding: _screenPadding,
                child: GridView.builder(
                  itemCount: coffees.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 156 / 244,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final coffee = coffees[index];
                    print(index);
                    return CoffeeCard(
                      key: Key(index.toString()),
                      imagePath: 'gs://friflex-api-meetup.appspot.com/images/coffee_image_${index + 1}.png',
                      name: coffee['name']!,
                      description: coffee['description']!,
                      cost: coffee['price']!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.cost,
  });

  final String imagePath;
  final String name;
  final String description;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 244,
      // width: 156,
      child: Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 8,
          right: 8,
          bottom: 12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageFromFirebase(imageUrl: imagePath),
            SizedBox(height: 8),
            Text(name),
            SizedBox(height: 4),
            Text(description),
            SizedBox(height: 8),
            Row(
              children: [
                Text(cost),
                Spacer(),
                CustomCoffeeButton(
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
//           padding: const EdgeInsets.all(16),
//           itemCount: coffees.length,
//           itemBuilder: (context, index) {
//             final coffee = coffees[index];
//             return Card(
//               margin: const EdgeInsets.symmetric(vertical: 8),
//               child: ListTile(
//                 // заменить на network
//                 leading:
//                     Image.network("gs://friflex-api-meetup.appspot.com/images/coffee_image_${index + 1}.png"),
//                 title: Text(coffee['name']!),
//                 subtitle: Text(coffee['description']!),
//                 trailing: Text(coffee['price']!),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //     builder: (context) => CoffeeDetailScreen(coffee),
//                   //   ),
//                   // );
//                 },
//               ),
//             );
//           },
//         )
