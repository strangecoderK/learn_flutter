import 'package:flutter/material.dart';
import 'package:learn_flutter/01_widget_rule/data/model/creator.dart';

class CreatorProfile extends StatelessWidget {
  final Creator creator;
  final void Function(Creator creator) onTap;
  final bool isFollowing;

  const CreatorProfile({
    super.key,
    required this.creator,
    required this.onTap,
    required this.isFollowing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.network(
                creator.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                creator.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.green,
                  ),
                  Text(creator.location),
                ],
              )
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => onTap(creator),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    isFollowing ? 'Following' : 'Follow',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
