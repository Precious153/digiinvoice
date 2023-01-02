import 'package:digiinvoice/const.dart';
import 'package:digiinvoice/widgets/Mytext.dart';
import 'package:flutter/material.dart';
import '../BottomNav.dart';

class Receipt extends StatefulWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      backgroundColor: scaffoldColor,
      body: Column(
        children: [MyText(title: 'RECEIPT', weight: FontWeight.w700, size: 24)],
      ),
    );
  }
}
