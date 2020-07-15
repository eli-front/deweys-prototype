import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeOption extends StatelessWidget {

  final List<String> imgList = [
    'assets/Tito-2019-v2.png',
    'assets/Harvest-Salad-Deweys-Pizza.png',
    'assets/Deweys-June-65_websize.png'
  ];

  final List<String> _messageList = [
    "TITO\nSANTANA/IT'S BACK BABY",
    'HARVEST\nIS BACK/SALADS>',
    'WELCOME\nBACK/Learn More About Our Safety Practices'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
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
                  CarouselText(_messageList[index])
                ],
              ),
            );
          },
          carouselController: CarouselController(),
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
      ],
    );
  }
}

class CarouselText extends StatelessWidget {

  final String words;

  CarouselText(this.words);

  @override
  Widget build(BuildContext context) {
    List<String> sects = words.split('/');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sects[0],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            sects[1],
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            print(sects[1]);
          },
        ),
      ],
    );
  }
}

