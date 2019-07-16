import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final image;
  final title;
  final subtitle;
  final price;
  const CartItem({Key key, this.image, this.price, this.subtitle, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(subtitle, style: TextStyle(height: 1.5)),
                Text('\$' + price),
              ],
            ),
          )
        ],
      ),
    );
  }
}
