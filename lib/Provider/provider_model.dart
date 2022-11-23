import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  final List<Map<String, String>> _myProviderList = [];

  List<Map> get myProviderList => _myProviderList;

  final List<Map<String, String>> _myFavoriteList = [
    {
      'name': 'Group_H Cheezy Pizza',
      'description':
          'Pepperoni pizza, Margarita\nPizza Margarita Italian\ncuisine Tomato',
      'price': '29'
    },
    {
      'name': 'Pepperoni Pizza',
      'description':
          'Pepperoni pizza, Margarita\nPizza Margarita Italian\ncuisine Tomato',
      'price': '29'
    },
    {
      'name': 'Pizza cheese',
      'description':
          'Food Pizza dish cuisine\nJunk Food, Fast Food,\nFlatbread, Ingredients',
      'price': '23'
    },
    {
      'name': 'Peppy Peneer',
      'description':
          'Pizza loaded with\nCrunchy onion crisps\nCapsicum, juicy tomato',
      'price': '43'
    },
    {
      'name': 'Mexican Green Wave',
      'description':
          'Pepperoni pizza, Margarita\nPizza Margarita Italian\ncuisine Tomato',
      'price': '29'
    },
    {
      'name': 'Pizza cheese',
      'description':
          'Pepperoni pizza, Margarita\nPizza Margarita Italian\ncuisine Tomato',
      'price': '52'
    }
  ];

  List<Map<String, String>> get myFavoriteList => _myFavoriteList;

  addProduct(String product, String description, String price) {
    Map productDetails = {
      'name': product,
      'description': description,
      'price': price
    };

    myProviderList.add(productDetails);
    notifyListeners();
  }

  remove(int index) {
    myProviderList.removeAt(index);
    notifyListeners();
  }
}
