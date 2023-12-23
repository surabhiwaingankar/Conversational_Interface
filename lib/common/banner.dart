import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         height: 200,
          width:300,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
             color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Text(text),
              Image.asset(image)
            ],
          ),
        ),
    );
  }
}