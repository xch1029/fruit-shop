import 'package:flutter/material.dart';

class ShopTag extends StatelessWidget {
  final IconData icon;
  final String content;
  final Color color;
  const ShopTag({Key key, this.color, this.content, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color,
        ),
        child: Row(
          children: <Widget>[
            Icon(icon,color: Colors.white70, size: 20,),
            SizedBox(width: 4,),
            Text(content, style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
