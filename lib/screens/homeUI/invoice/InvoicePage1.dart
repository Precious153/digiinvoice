import 'package:flutter/material.dart';
import '../../../const.dart';

class InvoicePage1 extends StatefulWidget {
  InvoicePage1({this.onSeeAllTap, this.onNewCardTap});

  VoidCallback? onSeeAllTap, onNewCardTap;

  @override
  State<InvoicePage1> createState() => _InvoicePage1State();
}

class _InvoicePage1State extends State<InvoicePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        children: [],
      ),
    );
  }
}
