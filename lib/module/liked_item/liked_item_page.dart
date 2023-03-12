import 'package:after_exam/module/liked_item/widget/liked_item_list.dart';
import 'package:after_exam/module/my_listing/listing_page.dart';
import 'package:flutter/material.dart';
import '../../common_widget/button_back.dart';
import '../../common_widget/header_text.dart';
import '../my_orders/my_order_page.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 18, top: 30, right: 18, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ButtonBack(),
                const SizedBox(width: 21),
                const HeaderText(
                  title: 'Liked items',
                  fontSize: 32,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyOrderPage(),));
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 37,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            const LikedItemList(),
            const SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}
