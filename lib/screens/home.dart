import 'package:flutter/material.dart';
import 'package:fruit_shop/utils/data.dart';
import 'package:fruit_shop/widgets/fruit_item.dart';
import 'package:fruit_shop/screens/detail.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              title: Text(
                'Discover',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 15, color: Colors.grey[200])],
                borderRadius: BorderRadius.circular(50)
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: "what would you like to discover?",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintStyle: TextStyle(height: 1.3)
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: false,
                itemCount: fruits.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: <Widget>[
                      SizedBox(width: index == 0 ? 40 : 20),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Detail(fruit: fruits[index]);
                          }));
                        },
                        child: FruitItem(fruit: fruits[index]),
                      ),
                      SizedBox(width: index == fruits.length - 1 ? 40 : 0),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
