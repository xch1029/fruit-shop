import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  final fruit;
  const FruitItem({Key key, this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              fruit['image'],
              width: MediaQuery.of(context).size.width - 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, -40),
          child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.grey[200], blurRadius: 10)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  fruit['name'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.grey[200]),
                    Text(fruit['rate']),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(fruit['comment']['image']),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(fruit['comment']['msg']),
                    SizedBox(width: 30),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
