
import 'package:crafty_bay/presentation/ui/utility/assets_path.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height, this.width});
  final double?height;
  final double?width;


  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsPath.logo,width:width??120,height: height,);
  }
}
