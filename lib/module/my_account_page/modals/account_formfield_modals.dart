class AccountDetailsModals {
  String title;
  String formhinttext;

  AccountDetailsModals({required this.title, required this.formhinttext});
}

List<AccountDetailsModals> accountdetails = [
  AccountDetailsModals(title: 'Name :', formhinttext: 'Alice Eve'),
  AccountDetailsModals(title: 'Email :', formhinttext: 'alice.eve@gmail.com'),
  AccountDetailsModals(title: 'Phone :', formhinttext: '+1 561-230-0033'),
  // AccountDetailsModals(title: 'Phone :', formhinttext: '+1 561-230-0033'),
  AccountDetailsModals(title: 'Address :', formhinttext: 'Alice Eve \n2074, Half and Half Drive\nHialeah, Florida - 33012\nP  h: +1 561-230-0033'),
];
