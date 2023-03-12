import 'package:after_exam/module/liked_item/widget/liked_item_list.dart';
import 'package:after_exam/module/my_listing/widgets/listing_items.dart';
import 'package:flutter/material.dart';
import '../../common_widget/button_back.dart';
import '../../common_widget/header_text.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({Key? key}) : super(key: key);

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
                children: const [
                  ButtonBack(),
                  SizedBox(width: 21),
                  HeaderText(
                    title: 'My Listing',
                    fontSize: 32,
                  ),
                  Spacer(),
                  Icon(
                    Icons.menu,
                    size: 37,
                  )
                ],
              ),
              const SizedBox(height: 15),
              const ListingItemList(),
              const SizedBox(height: 21),
            ],
          ),
        ),
      ),
    );
  }
}
