import 'package:code/Constants/assets.dart';
import 'package:code/Views/product_detail_screen.dart';
import 'package:code/data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 20,
            child: ClipOval(
                child: Image(image: AssetImage(Assets.assetsImagesProfile))),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OrderNowCard(),
            const SizedBox(height: 20),
            Text(
              'Categories',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Categories(),
            const SizedBox(height: 10),
            Text(
              'Popular Food',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}


class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Flexible(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: popularProducts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => ProductDetailScreen(
                      product: popularProducts[index],
                    ),
                    transitionDuration: const Duration(seconds: 1),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20, bottom: 20, top: 10),
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(5, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Hero(
                      tag: popularProducts[index].name,
                      child: Image(
                        image: AssetImage(popularProducts[index].image),
                        height: 100,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      popularProducts[index].name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      popularProducts[index].tagLine,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        Text(
                          "(${popularProducts[index].rating})",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 160,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: '\$',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.white,
                                  ),
                          children: [
                            TextSpan(
                              text: '6.59',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Flexible(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 10, bottom: 20, top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      shape: BoxShape.circle,
                    ),
                    child: Image(
                      image: AssetImage(categories[index].image),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    categories[index].title,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            );
          },
          itemCount: categories.length,
        ),
      ),
    );
  }
}

class OrderNowCard extends StatelessWidget {
  const OrderNowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'The Fastest\nDelivery Food',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text('Order Now'),
                )
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              Assets.assetsSvgDeliveryBoy,
              height: 120,
            ),
          )
        ],
      ),
    );
  }
}
