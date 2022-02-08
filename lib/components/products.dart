import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  //create maps
  //Grouping of items together
  var product_list = [
//maps
    {
      //key and a value:
      "name": "Air Jordan 1 Mid",
      "picture": "images/carousel/3.jpg",
      "old_price": 2599.99,
      "price": 2099.99,
    },

    {
      //key and a value:
      "name": "Air Jordan 1 Mid",
      "picture": "images/carousel/3.jpg",
      "old_price": 2599.99,
      "price": 2099.99,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatefulWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

//Constructor
  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("test"));
  }
}
