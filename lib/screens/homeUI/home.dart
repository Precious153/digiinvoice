import 'package:digiinvoice/screens/homeUI/receipt/receipt.dart';
import 'package:flutter/material.dart';
import '../../const.dart';
import 'Customers/customers.dart';
import 'inventory/Inventory.dart';
import 'invoice/invoicePage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  var currentIndex;
  var Kscreens = <Widget>[
    InvoicePage(),
    Receipt(),
    Customers(),
    InventoryPage(),
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
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: mainColor),
          fixedColor: mainColor,
          showSelectedLabels: true,
          currentIndex: index,
          onTap: (currentIndex) {
            setState(() {
              index = currentIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.description_outlined,
              ),
              label: 'invoice',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              label: 'Receipt',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_rounded),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.inventory_2_outlined,
              ),
              label: 'Inventory',
            ),
          ],
        ),
      ),
    );
  }
}
