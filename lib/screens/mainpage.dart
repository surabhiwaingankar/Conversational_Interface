import 'package:conversational_interface/screens/cart.dart';
import 'package:conversational_interface/screens/search.dart';
import 'package:conversational_interface/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';

import '../screens/homescreen.dart';
import '../screens/wishlistscreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    WishlistScreen(),
    Cart(),
    SearchScreen(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(253, 253, 253, 1),
        //leading: const Drawer(),
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int newindex) {
          setState(() {});
          _currentIndex = newindex;
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => screens[_currentIndex]));
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            const TextStyle(fontFamily: FontConstants.fontFamily),
        unselectedLabelStyle:
            const TextStyle(fontFamily: FontConstants.fontFamily),
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
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
        child: Image.asset(
          'assets/images/chatbot.png',
          scale: 0.8,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Joseph Reeds',
                    style: TextStyle(
                        fontFamily: FontConstants.fontFamily,
                        fontSize: FontSize.s16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'josephreeds32@gmail.com',
                    style: TextStyle(fontFamily: FontConstants.fontFamily),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
              child: ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Settings'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
              child: ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 251, 251, 251),
    );
  }
}
