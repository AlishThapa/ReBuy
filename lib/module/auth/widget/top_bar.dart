import 'package:flutter/material.dart';
import '../../../common_widget/button_back.dart';
import '../../../common_widget/header_text.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ButtonBack(),
        HeaderText(
          title: 'ReBuy',
          fontSize: 32,
        )
      ],
    );
  }
}
