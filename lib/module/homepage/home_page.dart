import 'package:after_exam/module/homepage/widgets/baar.dart';
import 'package:after_exam/module/homepage/widgets/homepage_top_bar.dart';
import 'package:after_exam/module/homepage/widgets/product_container.dart';
import 'package:after_exam/module/homepage/widgets/recently_viewed_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/my_search_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(right: 18,left: 18,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomepageTopBar(),
              SizedBox(height: 25),
              MySearchBar(),
              SizedBox(height: 25),
              Baar(text: 'New arrivals'),
              SizedBox(height: 14),
              ProductContainer(),
              SizedBox(height: 33),
              Baar(text: 'Recently Viewed'),
              SizedBox(height: 14),
              RecentlyViewedContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
