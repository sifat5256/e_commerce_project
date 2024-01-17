import 'package:crafty_bay/presentation/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/circle_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ,
    );
  }


  AppBar get appBar=> AppBar(
      automaticallyImplyLeading: false, // Remove the default back button
      title: Image.asset("assets/images/logos/logo_nav (1).png"),
      actions: [
        CircleIcon(
          onTap: (){},
          iconData: Icons.person,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleIcon(
          onTap: (){},
          iconData: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleIcon(
          onTap: (){},
          iconData: Icons.notifications_active_outlined,
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
}


