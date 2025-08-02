import 'package:facebook_ui/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Avatar(size: 50, asset: 'assets/users/1.jpg'),
          SizedBox(width: 20),
          Flexible(
            child: Text(
              "What's on your mind?",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
