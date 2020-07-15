import 'package:flutter/material.dart';

class DeweysAppBar extends StatefulWidget implements PreferredSizeWidget {

  DeweysAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  _DeweysAppBarState createState() => _DeweysAppBarState();
}

class _DeweysAppBarState extends State<DeweysAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Image(
        image: AssetImage('assets/blackboardBg4.png'),
        fit: BoxFit.cover,
      ),
      title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage('assets/Logo_Deweys_horizontal-1_resized.png'),
        height: 35,
        repeat: ImageRepeat.repeatY,
      ),
    ),
    );
  }
}
