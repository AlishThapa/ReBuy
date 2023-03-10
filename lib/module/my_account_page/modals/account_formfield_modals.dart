import 'package:flutter/material.dart';

class AccountDetailsModals {
  String title;
  String formhinttext;

  AccountDetailsModals({required this.title, required this.formhinttext});
}

List<AccountDetailsModals> accountdetails = [
  AccountDetailsModals(title: 'Name :', formhinttext: 'Alice Eve'),
  AccountDetailsModals(title: 'Email :', formhinttext: 'alice.eve@gmail.com'),
  AccountDetailsModals(title: 'Phone :', formhinttext: '+1 561-230-0033'),
];
