import 'package:flutter/material.dart';

class DrawerText {
static TextStyle drawerText = TextStyle(
    color: Colors.black, fontSize: 20,
);

}

class SelectedDrawerText {
  static TextStyle drawerText = TextStyle(
      color: Colors.red, fontSize: 20
  );
}

class ListText {
  static TextStyle listText = TextStyle(
    color: Colors.grey[800], fontSize: 13
  );
}

class ShoppingBoxDecoration {
  static BoxDecoration boxStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
    boxShadow: [
      BoxShadow(
        color: Color(0xFF5d657a).withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}