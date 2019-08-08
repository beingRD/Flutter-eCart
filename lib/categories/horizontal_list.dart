import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120.0,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           Category(
           image_location: 'images/cat/tshirt.png',
            image_caption: 'Shirts',
          ),
           Category(
            image_location: 'images/cat/shoe.png',
            image_caption: 'Shoes',
          ),
           Category(
            image_location: 'images/cat/watch.png',
            image_caption: 'Watches',
          ),
           Category(
            image_location: 'images/cat/jwellery.png',
            image_caption: 'Jwellery',
          ),
           Category(
            image_location: 'images/cat/glasses.png',
            image_caption: 'Glasses',
          ),
        ],
      ),

    );
  }
}


class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;

  //Making
  Category({
   this.image_location,
   this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:const EdgeInsets.all(4.0),
      child:  InkWell(
        onTap: (){},
        child:  Container(
          width: 100.0,
          child:  ListTile(
            title:  Image.asset(
                image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle:  Container(
                alignment: Alignment.center,
                child:  Text(image_caption,style:  TextStyle(color: Colors.black54,fontSize: 14.0),)),
          ),
        ),
      ),

    );
  }
}

