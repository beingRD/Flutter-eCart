import 'package:flutter/material.dart';

import 'package:flutter_ecart/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "image": "images/products/blazer1.jpeg",
      "old_price": "4999",
      "price": "2999"
    },
    {
      "name": "Pant",
      "image": "images/products/pants1.jpg",
      "old_price": "3499",
      "price": "1999"
    },
    {
      "name": "Studs",
      "image": "images/products/studs1.jpeg",
      "old_price": "299",
      "price": "269"
    },
    {
      "name": "Watch",
      "image": "images/products/watch1.jpeg",
      "old_price": "6999",
      "price": "4999"
    },
    /*{
      "name":"Hill",
      "image":"images/products/hills1.jpeg",
      "old_price":"120",
      "price":"180"
    },
    {
      "name":"Pant",
      "image":"images/products/pants1.jpg",
      "old_price":"115",
      "price":"89"
    },
    {
      "name":"Skirt",
      "image":"images/products/skt1.jpeg",
      "old_price":"320",
      "price":"480"
    },
    {
      "name":"Shoe",
      "image":"images/products/shoe1.jpg",
      "old_price":"360",
      "price":"550"
    },
    {
      "name":"Skirt",
      "image":"images/products/skt2.jpeg",
      "old_price":"120",
      "price":"80"
    }
    */
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            prod_name: product_list[index]['name'],
            prod_image: product_list[index]['image'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_old_price;
  final prod_price;

  SingleProduct({
    this.prod_name,
    this.prod_image,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Card(
        elevation: 6.0,
        color: Colors.cyanAccent,
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () {
                  //We are passing the values from one activity to another activity
                  var route = MaterialPageRoute(
                      builder: (BuildContext context) => ProductDetails(
                            productDetailsName: prod_name,
                            productDetailsImage: prod_image,
                            productDetailsOldPrice: prod_old_price,
                            productDetailsNewPrice: prod_price,
                          ));
                  Navigator.of(context).push(route);
                },
                child: GridTile(
                  footer: Container(
                    color: Colors.black26,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      prod_image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
