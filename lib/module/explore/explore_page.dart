import 'package:after_exam/module/explore/widget/category_button.dart';
import 'package:after_exam/common_widget/my_search_bar.dart';
import 'package:after_exam/module/explore/widget/post_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widget/button_back.dart';
import '../../common_widget/header_text.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 18, top: 30, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonBack(),
                  SizedBox(width: 21),
                  HeaderText(
                    title: 'Explore',
                    fontSize: 32,
                  ),
                  Spacer(),
                  Icon(
                    Icons.menu,
                    size: 37,
                  )
                ],
              ),
              const SizedBox(height: 32),
              const MySearchBar(),
              const SizedBox(height: 17),
              SingleChildScrollView( 
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CategoryButton(),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              PostBox(
                // modals to be made if there are many boxes
                profileIcon: SvgPicture.asset('assets/images/Google.svg'),
                name: 'Cliff Hanger',
                subName: 'El Dorado',
                postImage: 'assets/images/guitar.png',
                productName: 'Cordoba Mini Guitar',
                productDateAndPlace: 'Make: Cordoba | Year: 2020',
                productPrice: '25,000',
              ),
              const SizedBox(height: 10),
              const PostBox(
                profileIcon: Image(image: AssetImage('assets/images/iphone.png')),
                name: 'Frank N. Stein',
                subName: 'Shangri La',
                postImage: 'assets/images/iphone.png',
                productName: 'iphone',
                productDateAndPlace: 'Make: California | Year: 2022',
                productPrice: '\$1399',
              )
            ],
          ),
        ),
      ),
    );
  }
}
