import 'package:flutter/material.dart';
import 'package:fruit_shop/utils/data.dart';
import 'package:fruit_shop/widgets/cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Shopping cart',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Text('A total of ${carts.length} pieces'),
              SizedBox(height: 20,),
              Expanded(
                flex: 2,
                child: ListView(
                    children: List.generate(carts.length, (index) {
                  return CartItem(
                    image: carts[index]['image'],
                    title: carts[index]['title'],
                    subtitle: carts[index]['subtitle'],
                    price: carts[index]['price'],
                  );
                })),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Purchase'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
