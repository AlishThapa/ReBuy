import 'package:after_exam/module/liked_item/widget/liked_item_list.dart';
import 'package:after_exam/module/my_listing/listing_page.dart';
import 'package:after_exam/module/my_orders/widget/ordered_item_list.dart';
import 'package:flutter/material.dart';
import '../../common_widget/button_back.dart';
import '../../common_widget/header_text.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                    title: 'My Orders',
                    fontSize: 32,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ListingPage(),));
                    },
                    child: const Icon(
                      Icons.menu,
                      size: 37,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              const OrderedItemList(),
              const SizedBox(height: 21),
            ],
          ),
        ),
      ),
    );
  }
}
