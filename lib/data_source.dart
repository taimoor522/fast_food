import 'package:code/Models/category.dart';
import 'package:code/constants/assets.dart';

import 'Models/product.dart';

// list of categories
final List<Category> categories = [
  const Category(title: 'Burger', image: Assets.assetsImagesBurderIcon),
  const Category(title: 'Pizza', image: Assets.assetsImagesPizzaIcon),
  const Category(title: 'Noodles', image: Assets.assetsImagesNoodlesIcon),
  const Category(title: 'French', image: Assets.assetsImagesFriesIcon),
  const Category(title: 'Croissant', image: Assets.assetsImagesCroissantIcon),
];

// list of popular products
final List<Product> popularProducts = [
  Product(
    name: 'Beef Burger',
    tagLine: 'Double Beef',
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    image: Assets.assetsImagesBurger,
    rating: 4.5,
    price: 5.40,
  ),
  Product(
    name: 'French Fries',
    tagLine: 'Musturde Sauce',
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    image: Assets.assetsImagesFries,
    rating: 4.8,
    price: 6.59,
  ),
  Product(
    name: 'Cheese Pizza',
    tagLine: 'Double Cheese',
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    image: Assets.assetsImagesPizza,
    rating: 4.6,
    price: 8.69,
  ),
  Product(
    name: 'Noodles',
    tagLine: 'Spicy',
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum!',
    image: Assets.assetsImagesNoodles,
    rating: 4.4,
    price: 4.67,
  ),
];
