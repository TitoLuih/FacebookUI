import 'package:facebook_ui/icons/custom_icons.dart';

import 'circle_button.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickButton(color: Color(0xff92BE87), icon: CustomIcons.photos, label: "Gallery",),
            SizedBox (width: 15,),
            _QuickButton(color: Color(0xff7BBAFF), icon: CustomIcons.user_friends, label: "Tag Friends",),
            SizedBox (width: 15,),
            _QuickButton(color: Color(0xffFE7574), icon: CustomIcons.video_camera, label: "Live",),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const _QuickButton({required this.icon, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CircleButton(color: color.withOpacity(0.6), iconData: icon),
          SizedBox(width: 15),
          Text(label , style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
