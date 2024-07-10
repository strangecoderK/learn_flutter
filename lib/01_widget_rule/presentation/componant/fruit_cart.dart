import 'package:flutter/material.dart';
import 'package:learn_flutter/01_widget_rule/data/model/fruit.dart';

class FruitCart extends StatelessWidget {
  final Fruit fruit;

  const FruitCart({
    super.key,
    required this.fruit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(fruit.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              fruit.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              '${fruit.weight}g',
              style: const TextStyle(color: Colors.grey, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
