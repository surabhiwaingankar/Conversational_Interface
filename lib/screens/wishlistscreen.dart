import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int newindex) {
          _currentIndex = newindex;
          setState(() {});
        },
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: ColorManager.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(253, 253, 253, 1),
      appBar: AppBar(
        leading: const Icon(Icons.list),
        title:
            //Text('Stylish'),
            Container(
          height: 50,
          width: 115,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: CircleAvatar(
              maxRadius: 20.0,
              backgroundImage: null,
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchBar(
              hintText: 'Search Any Product...',
              hintStyle: MaterialStatePropertyAll(
                TextStyle(
                    color: Colors.grey, fontFamily: FontConstants.fontFamily),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              surfaceTintColor: MaterialStatePropertyAll(Colors.white),
              leading: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              elevation: MaterialStatePropertyAll(1),
              trailing: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.mic_none,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
