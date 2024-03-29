import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';
import 'package:conversational_interface/presentation/resources/style_manager.dart';
import 'package:conversational_interface/presentation/resources/strings_manager.dart';
import 'package:conversational_interface/presentation/resources/values_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conversational_interface/custom/customwidgets.dart';
import 'package:read_more_text/read_more_text.dart';

class ProductDetails extends StatefulWidget {
  final String image1;
  final String image2;
  final String image3;
  final String productTitle;
  final String productCategory;
  final String productDescription;
  final int productPrice;
  final int noOfRatings;
  final double rating;
  final String productDetails;
  const ProductDetails(
      {super.key,
      required this.image1,
      required this.image2,
      required this.image3,
      required this.productTitle,
      required this.productCategory,
      required this.productDescription,
      required this.productPrice,
      required this.rating,
      required this.noOfRatings,
      required this.productDetails});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.offwhite,
        appBar: AppBar(
          backgroundColor: ColorManager.offwhite,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorManager.lightGrey,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    items: [
                      Image(
                        image: NetworkImage(widget.image1),
                      ),
                      Image(
                        image: NetworkImage(widget.image2),
                      ),
                      Image(
                        image: NetworkImage(widget.image3),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: ((index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: ColorManager.grey, blurRadius: 2)
                          ],
                          shape: BoxShape.circle,
                          color: (currentIndex == i)
                              ? ColorManager.primary
                              : ColorManager.white,
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Text(
                    widget.productTitle,
                    style: getSemiBoldStyle(
                        color: Colors.black, fontSize: FontSize.s20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Text(
                    widget.productCategory,
                    style: getRegularStyle(
                        color: Colors.black, fontSize: FontSize.s14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Text(
                    widget.productDescription,
                    style: getRegularStyle(
                        color: Colors.black, fontSize: FontSize.s14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: RatingStars(
                          height: 20,
                          width: 100,
                          starSize: 20,
                          rating: widget.rating,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${widget.noOfRatings}',
                        style: getLightStyle(
                            color: Colors.black, fontSize: FontSize.s12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Text(
                    "₹${widget.productPrice}",
                    style: getSemiBoldStyle(
                        color: Colors.black, fontSize: FontSize.s16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: Text(
                    AppStrings.prodDetails,
                    style: getSemiBoldStyle(
                        color: Colors.black, fontSize: FontSize.s16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p8),
                  child: ReadMoreText(
                    widget.productDetails,
                    numLines: 4,
                    readLessText: 'Read Less',
                    readMoreText: 'Read More',
                    readMoreTextStyle:
                        getSemiBoldStyle(color: ColorManager.primary),
                    readMoreIconColor: ColorManager.primary,
                    style: getRegularStyle(
                        color: Colors.black, fontSize: FontSize.s14),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 25,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {},
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: ColorManager.white,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  AppStrings.addcart,
                                  style: getMediumStyle(
                                      color: ColorManager.white,
                                      fontSize: FontSize.s16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 25,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {},
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.ads_click,
                                color: ColorManager.white,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                AppStrings.buy,
                                style: getMediumStyle(
                                    color: ColorManager.white,
                                    fontSize: FontSize.s16),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
                  child: Text(
                    "Similar Items",
                    style: getBoldStyle(
                        color: Colors.black, fontSize: AppPadding.p20),
                  ),
                ),
                const ItemsandSortFilter(itemsno: 200),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductItemCard(
                      productThumbnail: widget.image1,
                      productCategory: widget.productCategory,
                      productDescription: widget.productDescription,
                      productTitle: widget.productTitle,
                      productPrice: widget.productPrice,
                      rating: widget.rating,
                      noOfRatings: widget.noOfRatings,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                  child: Text(
                    "Reviews",
                    style: getBoldStyle(
                        color: Colors.black, fontSize: AppPadding.p20),
                  ),
                ),
                ReviewItem(
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png",
                    reviewerName: 'John',
                    reviewDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
              ],
            ),
          ),
        ));
  }
}
