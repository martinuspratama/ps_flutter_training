import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ps_flutter/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PSColor.primary,
        title: Text('Home'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: PSColor.greyBorder),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/sayur.png'),
                        width: 80,
                        height: 80,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Kangkung', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            )),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              child: Text('10%', style: TextStyle(
                                color: Colors.red
                              ),)
                            ),
                            Text('Harga Sayur'),
                            Text('Button tambah'),
                          ],
                        )
                      ),
                    ],
                  ),
                  Text('ICON'),
                ],
              ),
            ),
            RaisedButton(
              child: Text('Logout'),
              onPressed: () { Navigator.pushReplacementNamed(context, '/'); },
            )
          ],
        ),
      ),
    );
  }
}
