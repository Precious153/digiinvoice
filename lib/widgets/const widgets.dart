import 'package:flutter/material.dart';
import '../const.dart';
import 'Mytext.dart';

class Widgets {
  static Widget FloatingButton(context) {
    return FloatingActionButton.extended(
      backgroundColor: mainColor,
      onPressed: () {},
      label: Row(
        children: [
          Icon(Icons.add),
          MyText(
            title: 'Add Inventory',
            color: Colors.white,
            size: textsize,
          ),
        ],
      ),
    );
  }
}
