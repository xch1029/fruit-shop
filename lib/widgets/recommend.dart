import 'package:flutter/material.dart';
import 'package:fruit_shop/utils/data.dart';

class Recommend extends StatelessWidget {
  const Recommend({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Text(
          'Recommend',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: false,
            children: List.generate(recommend.length, (index) {
              return Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      recommend[index]['image'],
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
            }),
          ),
        )
      ],
    );
  }
}
