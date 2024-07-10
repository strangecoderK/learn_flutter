import 'package:flutter/material.dart';
import 'package:learn_flutter/01_widget_rule/data/model/fruit.dart';
import 'package:learn_flutter/01_widget_rule/presentation/componant/fruit_cart.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final fruit = const Fruit(
      image:
          'https://cdn.pixabay.com/photo/2017/10/06/17/17/tomato-2823826_1280.jpg',
      name: 'tomato',
      weight: '500');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제목'),
      ),
      body: Column(
        children: [FruitCart(fruit: fruit)],
      ),
    );
  }
}
