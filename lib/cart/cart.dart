import 'package:flutter/material.dart';

import 'package:flutter_ecart/main.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          backgroundColor: Colors.amber,
          title: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyHome(),
                  ),
                );
              },
              child: Text(
                'Cart',
                style: TextStyle(
                  fontFamily: 'Saira',
                  fontSize: 30.0,
                ),
              )),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'Total:\$2999',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: MaterialButton(
                    color: Colors.amber,
                    splashColor: Colors.black54,
                    child: Text(
                      'Check Out',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
