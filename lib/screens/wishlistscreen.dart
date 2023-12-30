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
    return const Column(
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
        Text('Wishlist'),
      ],
    );
  }
}
