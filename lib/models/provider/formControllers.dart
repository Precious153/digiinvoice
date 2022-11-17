import 'package:flutter/material.dart';

class FormControllers extends ChangeNotifier {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _businessName = TextEditingController();
  final TextEditingController _reEnterPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();

  TextEditingController get searchController => _searchController;
  TextEditingController get password => _password;
  TextEditingController get reEnterPassword => _reEnterPassword;
  TextEditingController get email => _email;
  TextEditingController get businessName => _businessName;
  TextEditingController get phoneNumber => _phoneNumber;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
