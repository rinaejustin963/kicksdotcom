import 'package:flutter/material.dart';

//stateless widget does not change
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Brand(
            image_location: 'images/Logos/jordan.jpg',
            image_caption: 'Jordan',
          ),
          Brand(
            image_location: 'images/Logos/adidas.jpg',
            image_caption: 'Adidas',
          ),
          Brand(
            image_location: 'images/Logos/nike.jpg',
            image_caption: 'Nike',
          ),
          Brand(
            image_location: 'images/Logos/vanss.png',
            image_caption: 'Vans',
          ),
          Brand(
            image_location: 'images/Logos/Timberl.jpg',
            image_caption: 'Timbs',
          ),
        ],
      ),
    );
  }
}

class Brand extends StatelessWidget {
  //instance var
  final String image_location;
  final String image_caption;

  //constructor
  Brand(
      {required this.image_location,
      // ignore: non_constant_identifier_names
      required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
