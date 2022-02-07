import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//Own Imports
import 'package:kicksdotcom/components/horizontal_list.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/3.jpg'),
          AssetImage('images/carousel/6.jpg'),
          AssetImage('images/carousel/26.jpg'),
          AssetImage('images/carousel/69.jpg'),
          AssetImage('images/carousel/yeezy.jpg'),
          AssetImage('images/carousel/44312-original.jpg'),
          AssetImage('images/carousel/365.jpg'),
          AssetImage('images/carousel/timberland.jpg'),
          AssetImage('images/carousel/airforce.jpg'),
          AssetImage('images/carousel/DB2576.jpg'),
        ],
        autoplay: false,
//        animationCurve: Curves.fastOutSlowIn,
//        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 6.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('KicksDotCom'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //           header
            new UserAccountsDrawerHeader(
              accountName: Text('Rinae Justin Tshivhinda'),
              accountEmail: Text('Justinrinae@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            //Body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Brands'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.green,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Wishlist'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
            //Padding Widget
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              'Brands',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //Horizontal list view
          HorizontalList(),

          new Padding(
            //Padding Widget
            padding: const EdgeInsets.all(12.0),
            child: new Text(
              'Recent Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            //Grid Begins
          ),
        ],
      ),
    );
  }
}
