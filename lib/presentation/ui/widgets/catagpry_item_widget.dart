

import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:flutter/material.dart';

class CatagoryItemWidget extends StatelessWidget {
  const CatagoryItemWidget({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          color: AppColors.primaryColor.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(Icons.computer),
          ),
        ),
        Text("Electronics",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),)
      ],
    );
  }
}