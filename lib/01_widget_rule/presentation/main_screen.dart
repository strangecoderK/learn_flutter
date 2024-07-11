import 'package:flutter/material.dart';
import 'package:learn_flutter/01_widget_rule/data/model/creator.dart';
import 'package:learn_flutter/01_widget_rule/data/model/fruit.dart';
import 'package:learn_flutter/01_widget_rule/data/model/pop_up.dart';
import 'package:learn_flutter/01_widget_rule/data/model/recipe.dart';
import 'package:learn_flutter/01_widget_rule/presentation/componant/creator_profile.dart';
import 'package:learn_flutter/01_widget_rule/presentation/componant/fruit_card.dart';
import 'package:learn_flutter/01_widget_rule/presentation/componant/pop_up_dialog.dart';
import 'package:learn_flutter/01_widget_rule/presentation/componant/recipe_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final fruit = const Fruit(
      image:
          'https://cdn.pixabay.com/photo/2017/10/06/17/17/tomato-2823826_1280.jpg',
      name: 'Tomatos',
      weight: '500');

  final creator = const Creator(
      name: 'Laura wilson',
      location: 'Lagos, Nigeria',
      image:
          'https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg');

  final recipe = const Recipe(
      name: 'Traditional spare ribs',
      image:
          'https://cdn.pixabay.com/photo/2017/11/10/15/04/steak-2936531_1280.jpg',
      method: 'baked',
      chef: 'Chef John',
      time: '20 min',
      rating: 4.0);

  final popUp = const PopUp(
      url:
          'https://cdn.pixabay.com/photo/2017/11/10/15/04/steak-2936531_1280.jpg');

  Set<Creator> followingSet = {};

  void changeFollow(Creator creator) {
    setState(() {
      if (followingSet.contains(creator)) {
        followingSet.remove(creator);
      } else {
        followingSet.add(creator);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Rule'),
      ),
      body: Column(
        children: [
          FruitCard(fruit: fruit),
          CreatorProfile(
            creator: creator,
            onTap: (Creator creator) {
              changeFollow(creator);
            },
            isFollowing: followingSet.contains(creator),
          ),
          RecipeCard(recipe: recipe),
          PopUpDialog(popUp: popUp)
        ],
      ),
    );
  }
}
