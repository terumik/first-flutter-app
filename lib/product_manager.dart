import 'package:flutter/material.dart';

import './products.dart';
import 'package:first_app/product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // to create a named argument, use {}
  // (now if you instantiate ProductManager,
  // you'll pass value by Productmanager(startingProduct: value))
  ProductManager({this.startingProduct = 'Default Tester'});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  // property
  //  List<String> _products = ['Food Tester']; // string[]
  List<String> _products = [];

  @override
  void initState() {
    // like onInit()
    super.initState();
    _products.add(widget.startingProduct);
    // widget.prop can access to the properties belongs to the state
  }

  // function of the stateful widget that will be passed to ProductControl (stateless widget)
  // make child widget be able to access to its parent function
  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0), // 10px
        child: ProductControl(_addProduct)
      ),
      Products(_products) // re-construct the Product
    ]);
  }
}
