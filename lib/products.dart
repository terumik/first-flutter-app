import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // property
  // 2. initially this property is empty
  // but it will take the value from the constructor
  final List<String> products;
  // final is kind a const. the value products is never changed (but replaced) after construct

  // constructor
  // 1. constructor takes an argument
  // then assign it to the property which has the same name as its arg
  // (this.product)-> List<String> products
  // https://stackoverflow.com/questions/50431055/what-is-the-difference-in-between-const-and-final-keyword-in-dart
  //  Products(this.products);

  // default value for positional argument, use []
  Products([this.products = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products // 3. now this products has the value from external data
          .map(
            (item) => Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/curry.jpg'),
              // to add image, you need to change pubspec.yamel
              Text(item)
            ],
          ),
        ),
      )
          .toList(),
    );
  }

}