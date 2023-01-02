import 'package:digiinvoice/screens/homeUI/receipt/receipt.dart';
import 'package:flutter/material.dart';
import '../../const.dart';
import 'Customers/customers.dart';
import 'inventory/Inventory.dart';
import 'invoice/invoicePage.dart';
import 'package:page_transition/page_transition.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            //selectedIconTheme: IconThemeData(color: mainColor),
            //fixedColor: mainColor,
            //showSelectedLabels: true,
            currentIndex: currentIndex,
            onTap: (index) {
              if (index != null) {
                switch (index) {
                  case 0:
                    if (currentIndex != 0) {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(seconds: 2),
                            child: const InvoicePage(),
                          ));
                      setState(() {
                        currentIndex = index;
                      });
                    } else {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(seconds: 2),
                          child: const InvoicePage(),
                        ),
                      );
                    }

                    break;
                  case 1:
                    if (currentIndex != 1) {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(seconds: 2),
                          child: Receipt(),
                        ),
                      );
                      setState(() {
                        currentIndex = index;
                      });
                    } else {
                      return;
                    }

                    break;
                  case 2:
                    if (currentIndex != 2) {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: Customers(),
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(seconds: 2)),
                      );
                      setState(() {
                        currentIndex = index;
                      });
                    } else {
                      return;
                    }
                    break;
                  case 3:
                    if (currentIndex != 3) {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: InventoryPage(),
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(seconds: 2)),
                      );
                      setState(() {
                        currentIndex = index;
                      });
                    }
                    break;
                  default:
                    return;
                }
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.description_outlined,
                  color: currentIndex == 0 ? mainColor : Colors.transparent,
                ),
                label: 'invoice',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt_long_outlined,
                  color: currentIndex == 1 ? mainColor : Colors.grey,
                ),
                label: 'Receipt',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups_rounded,
                  color: currentIndex == 2 ? mainColor : Colors.grey,
                ),
                label: 'Customers',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.inventory_2_outlined,
                  color: currentIndex == 3 ? mainColor : Colors.grey,
                ),
                label: 'Inventory',
              ),
            ],
          ),
        );
      },
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int index = 0;
//   var currentIndex;
//   var Kscreens = <Widget>[
//
//
//
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Kscreens[index],
//       bottomNavigationBar:
//     );
//   }
// }

// Container(
// height: 60,
// child: BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// backgroundColor: RentaWhite,
// selectedIconTheme: IconThemeData(color: RentaPrimaryColor),
// showSelectedLabels: true,
// selectedItemColor: RentaPrimaryColor,
// unselectedItemColor: RentaGrey,
// selectedLabelStyle: TextStyle(
// fontWeight: FontWeight.bold,
// ),
// unselectedLabelStyle: TextStyle(
// fontWeight: FontWeight.bold,
// ),
//
// );
