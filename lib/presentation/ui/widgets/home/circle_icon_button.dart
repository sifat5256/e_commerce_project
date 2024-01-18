

import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key, required this.onTap, required this.iconData,
  });
  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          iconData,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}