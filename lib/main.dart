import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_ecart/categories/horizontal_list.dart';
import 'package:flutter_ecart/categories/products.dart';
import 'package:flutter_ecart/cart/cart.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //making widget to increase the readability
  Widget image_carousel = Container(
    height: 225.0,
    child: Carousel(
      overlayShadow: false,
      borderRadius: true,
      boxFit: BoxFit.contain,
      autoplay: true,
      dotSize: 3.0,
      indicatorBgPadding: 7.0,
      images: [
        AssetImage('images/shop1.jpg'),
        AssetImage('images/shop2.png'),
        AssetImage('images/shop3.png'),
        AssetImage('images/shop4.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('CR7cartsite',
              style: TextStyle(
                fontFamily: 'Saira',
                fontSize: 30.0,
              )),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),

            //
            // for Cart Icon
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => Cart(),
                    ),
                  );
                }),
          ],
        ),

        ///
        /// /
        /// /
        /// For Drawer
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Rishabh Dev'),
                accountEmail: Text('rishabhdev.work@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: Text("RD",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 44.0,
                            fontFamily: 'HolyFat')),
                    //child:  Icon(Icons.person,color: Colors.white,),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home', style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.home,
                    color: Colors.black54,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title:
                      Text('Account', style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.black54,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders',
                      style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.black54,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Cart(),
                        ));
                  },
                  title: Text('Cart', style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.black54,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites',
                      style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.black54,
                  ),
                ),
              ),
              Divider(
                color: Colors.black87,
                height: 4.0,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title:
                      Text('Settings', style: TextStyle(color: Colors.black54)),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    'Help',
                    style: TextStyle(color: Colors.black54),
                  ),
                  leading: Icon(
                    Icons.help,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),

            //Image Carousel
            image_carousel,

            //padding
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontFamily: 'Saira',
                  color: Colors.black87,
                ),
              ),
            ),

            //Horizontal ListView
            HorizontalList(),

            //padding
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 8.0),
              child: Text(
                'Recent Products',
                style: TextStyle(
                  fontFamily: 'Saira',
                  color: Colors.black87,
                ),
              ),
            ),

            //making shopping products
            Container(
              height: 400.0,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
