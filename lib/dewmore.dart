import 'package:deweys_pizza/deweysAppBar.dart';
import 'package:flutter/material.dart';

class Dewmore extends StatefulWidget {
  static const routeName = '/dewmore';
  @override
  _DewmoreState createState() => _DewmoreState();
}

class _DewmoreState extends State<Dewmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Tileable-High-Res-Metal-Textures.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'DEWMORE\nMONDAY',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'ST. LOUIS',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 5.0, color: Colors.black),
                  left: BorderSide(width: 5.0, color: Colors.black),
                  right: BorderSide(width: 5.0, color: Colors.black),
                  bottom: BorderSide(width: 5.0, color: Colors.black),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WHAT'S ON\nOUR PLATE\nTHIS MONTH\nIN ST. LOUIS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '- BESIDES PIZZA -',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          FlatButton(
                            color: Colors.redAccent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.insert_drive_file,
                                  color: Colors.white,
                                ),
                                Text(
                                  'DOWNLOAD NOW',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,
                                )

                              ],
                            ),
                            onPressed: () {
                              print('Download Now');
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'DEWMORE\nMONDAY\nNEWSLETTER\nSIGNUP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 38
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
