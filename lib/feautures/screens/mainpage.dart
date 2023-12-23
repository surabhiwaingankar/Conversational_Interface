import 'package:carousel_slider/carousel_slider.dart';
import 'package:conversational_interface/common/banner.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
final categories=["Fashion","Furniture","Electronic"];
late String selected=categories[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children:[
              Container(
        margin: EdgeInsets.only(left: 15,top: 10),
        width: 380,
        child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  
                                });
                               
                                print(value);
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none,
                                ),
                                 filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                prefixIcon: const Icon(Icons.search),
                                prefixIconColor: Colors.grey.shade400,
            )
        ),
      ),

      const SizedBox(height: 16,),
      Container(
        margin: const EdgeInsets.only(left: 50),
        child: Center(
          child: CarouselSlider(
            items: const [
               BannerImage(image: "assets/dress.png",text: 'Try Me',),
               BannerImage(image: "assets/dress.png",text: 'Try Me',),
               BannerImage(image: "assets/dress.png",text: 'Try Me',),
            ],
           options:CarouselOptions(
            viewportFraction: 1,
           )
            ),
        ),
        ),


    Container(
    width: double.infinity,
    height: 80,
    margin: EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          final text=categories[index];
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selected=text;
                });
                
              },
              child: Chip(
                label:Text(text),
              side: const BorderSide(color:Color.fromRGBO(245, 247, 249,1 ) ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              labelStyle: const TextStyle(fontSize: 16),
              backgroundColor: selected == text?const Color.fromARGB(255, 214, 106, 234):Colors.grey.shade300,
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),),
            ),
          );
      }),
    ),

    
       

      
        ]
      )
      
    
    );
  }
}