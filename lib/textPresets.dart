import 'package:flutter/material.dart';

class RalewayText extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign alignment;
  final Color color;
  RalewayText(this.text, this.size, {this.alignment, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: size,
          fontFamily: 'Raleway'
      ),
      textAlign: alignment ?? TextAlign.center,
    );
  }
}

class RobotoSlabText extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign alignment;
  final Color color;
  RobotoSlabText(this.text, this.size, {this.alignment, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: size,
          fontFamily: 'RobotoSlab'
      ),
      textAlign: alignment ?? TextAlign.center,
    );
  }
}

class RedButton extends StatelessWidget {
  final String text;
  final double size;


  RedButton(this.text, {this.size});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Color.fromRGBO(194, 0, 33, 1.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
      ),
      child: RobotoSlabText(text, size ?? 20,),
      onPressed: () {
        print(text);
      },
    );
  }
}
