
import 'package:crafty_bay/presentation/ui/cart_screen.dart';
import 'package:crafty_bay/presentation/ui/catagory_screen.dart';
import 'package:crafty_bay/presentation/ui/home_screen.dart';
import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:crafty_bay/presentation/ui/wish_list_screen.dart';
import 'package:flutter/material.dart';



class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex=0;
  final List<Widget> _screens=const[
    HomeScreen(),
    CartScreen(),
    CatagoryScreen(),
    WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
       showUnselectedLabels: true,
        onTap: (index){
          _selectedIndex=index;
          if(mounted){
            setState(() {

            });
          }
        },
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Catagories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Carts"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "WishList"),
        ],
      ),
    );
  }
}
