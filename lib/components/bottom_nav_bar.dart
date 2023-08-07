import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBotoomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
 MyBotoomNavBar({super.key,required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (Value) => onTabChange!(Value),
        color: Colors.grey[400],
        mainAxisAlignment:  MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color:Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'cart',
          ),
        ],
      ),
    );
  }
}
