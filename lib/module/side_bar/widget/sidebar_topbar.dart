import 'package:flutter/material.dart';
import '../../../common_widget/button_back.dart';
import '../../../common_widget/header_text.dart';

class SideBarTopBar extends StatelessWidget {
  const SideBarTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderText(
            title: 'ReBuy',
            fontSize: 32,
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.clear_sharp,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
