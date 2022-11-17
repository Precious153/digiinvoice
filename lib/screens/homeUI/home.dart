import 'package:digiinvoice/screens/homeUI/receipt/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../const.dart';

import 'Customers/customers.dart';
import 'inventory/InventoryPage1.dart';
import 'invoice/InvoicePage1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  var Kscreens = <Widget>[
    InventoryPage1(),
    InvoicePage1(),
    Customers(),
    Receipt(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Kscreens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(color: mainColor),
          selectedItemColor: mainColor,
          showSelectedLabels: true,
          currentIndex: index,
          onTap: (int currentIndex) {
            setState(() {
              index = currentIndex;
              print(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(invoice),
              label: 'invoice',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(receipt),
              label: 'Receipt',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_rounded),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(inventory),
              label: 'Inventory',
            ),
          ],
        ),
      ),
    );
  }
}
