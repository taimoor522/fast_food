import 'package:code/Constants/assets.dart';
import 'package:code/Models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.assetsImagesProductPageBg),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Container(
                    height: 600,
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Hero(
                              tag: product.name,
                              child: Image(
                                image: AssetImage(product.image),
                                width: 250,
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(Icons.remove),
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$${product.price}',
                              style: Theme.of(context).textTheme.titleLarge,
                            )
                          ],
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            product.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          subtitle: Text(
                            product.tagLine,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.grey,
                                    ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Text(
                                '(${product.rating})',
                                style: const TextStyle(),
                              )
                            ],
                          ),
                        ),
                        Text(
                          product.description,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () {},
                                child: const Text('Buy Now'),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                ),
                                child: const Text('Add to Cart'),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
