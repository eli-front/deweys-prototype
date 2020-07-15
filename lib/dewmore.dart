import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
          image: AssetImage('assets/blackboardBg4.jpg'),
          fit: BoxFit.cover,
        ),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 3.0, 0.0, 17.0),
          child: Image(
            image: AssetImage('assets/deweysLogo_mobile_white.png'),
          ),
        ),
      ),
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
