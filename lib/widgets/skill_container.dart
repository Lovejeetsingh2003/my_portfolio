import 'package:flutter/material.dart';

class SkillContainer extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String? imagePath;
  const SkillContainer({
    required this.title,
    this.icon,
    this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          if (icon != null || imagePath != null) SizedBox(width: 10),
          icon != null
              ? Icon(icon!, size: 40)
              : imagePath != null
              ? Image.asset(imagePath!, width: 40, height: 40)
              : Container(),
        ],
      ),
    );
  }
}
