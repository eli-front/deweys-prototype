import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeOption extends StatelessWidget {

  final List<String> imgList = [
    'assets/Tito-2019-v2.png',
    'assets/bacon-salad.png',
    'assets/Deweys-June-65_websize.png'
  ];

  final List<String> _messageList = [
    "TITO\nSANTANA/IT'S BACK BABY",
    'HARVEST\nIS BACK/SALADS>',
    'WELCOME\nBACK/Learn More About Our Safety Practices'
  ];

  final List<String> imgList2 = [
    'assets/bacon-salad.png',
    'assets/Ceasar-Salad.png',
    'assets/Calzone-Brill-PS.png'
  ];

  final List<String> _messageList2 = [
    'FRESH SALADS!',
    'FRESH SALADS!',
    'CALZONES MADE FRESH\nYOUR WAY!'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (_, index) {
              return Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Image(
                        image: AssetImage(imgList[index]),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    CarouselText(_messageList[index], Colors.transparent)
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 6),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            )
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/20,
          child: Image(
            image: AssetImage('assets/icon_cutter-CP.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(25.0),
          child: Text(
            'WE STAY SERIOUS ABOUT PIZZA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Raleway'
            ),
            textAlign: TextAlign.center,
          ),
        ),
        PromotionStack(
          'assets/1za.png',
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Colors.red)
            ),
            child: Text(
              'VIEW MENU',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoSlab',
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              print('Locations');
            },
          )
        ),
        PromotionStack(
          'assets/2leaf.png',
          Text(
            'ALWAYS FRESH\nHIGH-QUALITY\nINGREDIENTS',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',
              fontSize: 40
            ),
            textAlign: TextAlign.center,
          )
        ),
        PromotionStack(
          'assets/Kenwood-web.png',
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Colors.red)
            ),
            child: Text(
              'Locations',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoSlab',
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              print('Locations');
            },
          )
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height/20,
            child: Image(
              image: AssetImage('assets/rock-1.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Text(
          'SO MUCH MORE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Raleway'
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pizza may rock the center stage, but don't underestimate our salads and calzones...",
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'RobotoSlab'
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: CarouselSlider.builder(
              itemCount: imgList2.length,
              itemBuilder: (_, index) {
                return Container(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Image(
                          image: AssetImage(imgList2[index]),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      CarouselText(_messageList2[index], Colors.red)
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 6),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )
          ),
        ),
      ],
    );
  }
}

class CarouselText extends StatelessWidget {

  final String words;
  final Color btnColor;
  CarouselText(this.words, this.btnColor);

  @override
  Widget build(BuildContext context) {
    if (words.contains('/')) {
      List<String> sects = words.split('/');
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sects[0],
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Raleway'
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: btnColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: btnColor)
            ),
            child: Text(
              sects[1],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'RobotoSlab'
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              print(sects[1]);
            },
          ),
        ],
      );
    } else {
      return FlatButton(
        color: btnColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: btnColor)
        ),
        child: Text(
          words,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'RobotoSlab'
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          print(words);
        },
      );
    }

  }
}

class PromotionStack extends StatelessWidget {

  final String image;
  final Widget widget;
  PromotionStack(this.image, this.widget);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fitHeight,
            ),
          ),
          widget
        ],
      ),
    );
  }
}


