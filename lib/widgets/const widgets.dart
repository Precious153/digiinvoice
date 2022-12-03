import 'package:flutter/material.dart';
import '../const.dart';
import '../screens/homeUI/inventory/add_inventory.dart';
import 'Mytext.dart';

class Widgets {
  static Widget FloatingButton(context) {
    return FloatingActionButton.extended(
      backgroundColor: mainColor,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => AddInventory()));
        print('prssed');
      },
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
