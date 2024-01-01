import 'package:flutter/material.dart';
import 'package:conversational_interface/presentation/resources/color_manager.dart';
import 'package:conversational_interface/presentation/resources/font_manager.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int wishlistItemsno = 52000;
  final productThumbnail =
      'https://i5.walmartimages.com/asr/183322b2-091b-43e2-88ac-c90360734501.c4514ecc06c6e8b7635f3eafb5a7dbdd.jpeg';
  final productTitle = "Product Title";
  final productCategory = "Product Category";
  final productDescription = "Product Description";
  final productPrice = 499;
  final noOfRatings = 3000;
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$wishlistItemsno Items',
                  style: const TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s18,
                    fontWeight: FontWeightManager.bold,
                  ),
                ),
                Row(
                  children: [
                    Chip(
                      backgroundColor: ColorManager.white,
                      shadowColor: ColorManager.grey,
                      elevation: 2,
                      side: BorderSide.none,
                      avatar: const Icon(Icons.swap_vert),
                      label: const Text(
                        'Sort',
                        style: TextStyle(fontFamily: FontConstants.fontFamily),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Chip(
                      backgroundColor: ColorManager.white,
                      shadowColor: ColorManager.grey,
                      elevation: 2,
                      side: BorderSide.none,
                      avatar: const Icon(Icons.filter_alt_outlined),
                      label: const Text(
                        'Filter',
                        style: TextStyle(fontFamily: FontConstants.fontFamily),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            direction: Axis.horizontal,
            children: [
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
              WishlistItemCard(
                productThumbnail: productThumbnail,
                productCategory: productCategory,
                productDescription: productDescription,
                productTitle: productTitle,
                productPrice: productPrice,
                noOfRatings: noOfRatings,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WishlistItemCard extends StatelessWidget {
  final String productThumbnail;
  final String productTitle;
  final String productCategory;
  final String productDescription;
  final int productPrice;
  final int noOfRatings;
  const WishlistItemCard(
      {super.key,
      required this.productThumbnail,
      required this.productTitle,
      required this.productCategory,
      required this.productDescription,
      required this.productPrice,
      required this.noOfRatings});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Card(
        surfaceTintColor: ColorManager.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(image: NetworkImage(productThumbnail)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                productTitle,
                style: const TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.semiBold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                productCategory,
                style: const TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s12,
                    fontWeight: FontWeightManager.regular),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
              child: Text(
                productDescription,
                style: const TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s12,
                    fontWeight: FontWeightManager.regular),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
              child: Text(
                "₹$productPrice",
                style: const TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s14,
                    fontWeight: FontWeightManager.semiBold),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: RatingStars(),
                ),
                Text(
                  '$noOfRatings',
                  style: const TextStyle(
                      fontFamily: FontConstants.fontFamily,
                      fontSize: FontSize.s12,
                      fontWeight: FontWeightManager.light),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star_rate,
          size: 13.33,
          color: Color.fromRGBO(255, 149, 41, 1),
        ),
        Icon(
          Icons.star_rate,
          size: 13.33,
          color: Color.fromRGBO(255, 149, 41, 1),
        ),
        Icon(
          Icons.star_rate,
          size: 13.33,
          color: Color.fromRGBO(255, 149, 41, 1),
        ),
        Icon(
          Icons.star_rate,
          size: 13.33,
          color: Color.fromRGBO(255, 149, 41, 1),
        ),
        Icon(
          Icons.star_half_outlined,
          size: 13.33,
          color: Color.fromRGBO(255, 149, 41, 1),
        ),
      ],
    );
  }
}
