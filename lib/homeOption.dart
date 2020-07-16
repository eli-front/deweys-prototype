import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:deweys_pizza/textPresets.dart';

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
          child: RalewayText('WE STAY SERIOUS ABOUT PIZZA', 30,),
        ),
        PromotionStack(
          'assets/1za.png',
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Colors.red)
            ),
            child: RobotoSlabText('VIEW MENU', 30,),
            onPressed: () {
              print('Locations');
            },
          )
        ),
        PromotionStack(
          'assets/2leaf.png',
          RalewayText('ALWAYS FRESH\nHIGH-QUALITY\nINGREDIENTS', 40,)
        ),
        PromotionStack(
          'assets/Kenwood-web.png',
          FlatButton(
            color: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Colors.red)
            ),
            child: RobotoSlabText('Locations', 30,),
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
        RalewayText('SO MUCH MORE',30,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RobotoSlabText("Pizza may rock the center stage, but don't underestimate our salads and calzones...",13,),
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
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image(
              image: AssetImage('assets/Metal-Layer.png'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RalewayText('JOIN OUR CREW', 25,),
                  RobotoSlabText('We are always looking for dynamic people who have a strong passion for food and people. Management, Service Team and Pizza Maker positions are open for applications.', 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RedButton('APPLY NOW'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image(
                          width: MediaQuery.of(context).size.width/7,
                          image: AssetImage('assets/topwork.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image(
              image: AssetImage('assets/drink-shot.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RalewayText('CRAFT BREWS &\nAMAZING WINE\nSELECTIONS', 27, alignment: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RobotoSlabText('We keep our taps flowing with local and national beers and a great selection of fine wines', 15, alignment: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RalewayText('FIND A DEWEYS NEAR YOU!', 17,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RedButton('LOCATIONS', size: 18,),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/icon_heart.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RalewayText('GIFT & RECIEVE', 40),
              ),
              RobotoSlabText("Share the love with a Dewey's gift card or hook yourself up by joining our rewards program below.", 15,)
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage('assets/Deweys-GC-support-images.png'),
              ),
              Column(
                children: [
                  RalewayText('GIVE THE GIFT\nOF PIZZA', 40,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                    child: RedButton('BUY NOW'),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 200.0,
          color: Color.fromRGBO(245, 245, 245, 1.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage('assets/thanx_phone_resized.png'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.65,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 6.0,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: 3.0,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.width / 6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/thankx-logo.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    RalewayText('EARN FREE REWARDS', 23, color: Colors.black,),
                    RobotoSlabText('BY EATING PIZZA', 15, color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 3.0,
                        width: MediaQuery.of(context).size.width / 1.65,
                        color: Colors.black,
                      ),
                    ),
                    RedButton('LEARN MORE')
                  ],
                )
              )
            ],
          ),
        )
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
          RalewayText(sects[0], 30,),
          FlatButton(
            color: btnColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: btnColor)
            ),
            child: RobotoSlabText(sects[1], 20,),
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
        child: RobotoSlabText(words, 20,),
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


