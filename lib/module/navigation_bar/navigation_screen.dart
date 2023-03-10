// ignore_for_file: must_be_immutable

import 'package:after_exam/module/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../explore/explore_page.dart';
import '../messages/message_page.dart';
import 'bloc_module/bloc_module.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);

  List<Widget> bodys = [
    const Homepage(),
    const ExplorePage(),
    Container(),
    const MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 42),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xff3C3C3C)),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {},
              child: const Icon(
                Icons.camera_alt_rounded,
                size: 30,
                color: Color(0xff3C3C3C),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 05),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xff3C3C3C),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(0);
                  },
                  child: const Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(1);
                  },
                  child: const Icon(
                    Icons.explore_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(2);
                  },
                  child: const Icon(
                    Icons.favorite_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(3);
                  },
                  child: const Icon(
                    Icons.message_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
        body: BlocBuilder<BottomNavCubit, int>(
          builder: (context, state) {
            return bodys[state];
          },
        ),
      ),
    );
  }
}
