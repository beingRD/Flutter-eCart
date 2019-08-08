import 'package:flutter/material.dart';
import 'package:flutter_ecart/categories/products.dart';
import 'package:flutter_ecart/cart/cart.dart';
import 'package:flutter_ecart/main.dart';

class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsImage;
  final productDetailsNewPrice;
  final productDetailsOldPrice;

  ProductDetails(
      {this.productDetailsName,
      this.productDetailsImage,
      this.productDetailsOldPrice,
      this.productDetailsNewPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
            child: Text('CR7cartsite',
                style: TextStyle(
                  fontFamily: 'Saira',
                  fontSize: 30.0,
                )),
          ),
          actions: <Widget>[
            //""""""""""""""""""""""""""
            //For Cart
            //"""""""""""""""""""""""""
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Cart()),
                  );
                }),
          ],
        ),
        body: ListView(
          children: <Widget>[
            // Setting the image and details of the product
            Container(
              height: 300.0,
              child: GridTile(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                      height: 25.0,
                      color: Colors.white70,
                      child: Image.asset(widget.productDetailsImage)),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      "${widget.productDetailsName}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.cyan),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "\$${widget.productDetailsOldPrice}",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          )),
                          Expanded(
                            child: Text(
                              "\$${widget.productDetailsNewPrice}",
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text('Size')),
                        Expanded(
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    textColor: Colors.grey,
                    onPressed: () {},
                  ),
                ),

                //for color button
                Expanded(
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text('Color')),
                        Expanded(
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    textColor: Colors.grey,
                    onPressed: () {},
                  ),
                ),

                /////////////
                //////////////
                //////////
                //for quantity

                Expanded(
                  child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text('Qty')),
                        Expanded(
                          child: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    textColor: Colors.grey,
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            //   """"""""""""""""""""""""           """"""""""""""""""""""""""""
            //   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
            Padding(
              padding:
                  const EdgeInsets.only(left: 64.0, right: 64.0, top: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                        child: Text("Buy Now"),
                        color: Colors.amber,
                        textColor: Colors.white,
                        onPressed: () {}),
                  ),
                  IconButton(
                      color: Colors.amber,
                      icon: Icon(Icons.add_shopping_cart),
                      onPressed: () {}),
                  IconButton(
                      color: Colors.pink,
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {}),
                ],
              ),
            ),

            //""""""""""""""""""""""""""
            //
            // """"""""""""""""""""""""""""
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                'Product Details',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsumis that it has a more-or-less normal distribution of letters, as opposed to usingContent here, content here making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for Various versions have evolved over the years, sometimes by accident, sometimes on purpose ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                'Similar Products',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 400.0,
              child: Products(),
            ),
          ],
        ),
      ),
    );
  }
}
