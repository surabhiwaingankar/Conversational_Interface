import 'package:conversational_interface/feautures/screens/cart.dart';
import 'package:conversational_interface/feautures/screens/mainpage.dart';
import 'package:conversational_interface/feautures/screens/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex=0;

//  int currentindex=0;
final tabs=  [  const MainPage(),
const Cart(),
const ProfilePage(),


];

  @override
  //rgb(65, 105, 225)
  Widget build(BuildContext context) {
    return  Scaffold(
    body: tabs[_currentindex],
      bottomNavigationBar:  
      BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (index){
            setState(() {
              _currentindex=index;
            });
        },
        selectedItemColor: const Color.fromARGB(255, 223, 120, 241),
        unselectedItemColor: const Color.fromARGB(255, 223, 120, 241).withOpacity(0.7),
        unselectedFontSize: 0,
        items: const  [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: 'Home',
             ),

          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_cart),
            label: 'Cart',
             ),

          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label: 'Profile',
             ),

        ],
        ),
      

      
    );
  }
}