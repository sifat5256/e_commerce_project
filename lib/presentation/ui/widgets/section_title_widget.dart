

import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget({
    super.key, required this.title, required this.onTapSeeAll,
  });
  final String title;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(title,style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700
        ),),
        TextButton(onPressed:onTapSeeAll, child: const Text("See All"))

      ],
    );
  }
}