import 'package:after_exam/module/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../explore/explore_page.dart';
import '../liked_item/liked_item_page.dart';
import '../messages/message_page.dart';
import 'bloc_module/bloc_module.dart';
import 'package:image_picker/image_picker.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final ImagePicker _picker = ImagePicker();
  int _selectedIndex = 0;
  List<Widget> bodys = [
    const Homepage(),
    const ExplorePage(),
    const LikedPage(),
    // MyBackground(),
    const MessagePage(),
  ];
  List<Color> _colors = [
    const Color(0xff087E8B),
    const Color(0xff3C3C3C),
    const Color(0xff3C3C3C),
    const Color(0xff3C3C3C),
    const Color(0xff3C3C3C),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _colors = List.filled(_colors.length, const Color(0xff3C3C3C));
      _colors[_selectedIndex] = const Color(0xff087E8B);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 42),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xff3C3C3C),
            ),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                print(photo);
              },
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
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
                    _onItemTapped(0);
                  },
                  child: Container(
                    height: 41,
                    width: 66,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: _colors[0]),
                    child: const Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(1);
                    _onItemTapped(1);
                  },
                  child: Container(
                    height: 41,
                    width: 66,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: _colors[1]),
                    child: const Icon(
                      Icons.explore_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 22),
                GestureDetector(
                  onTap: () async {
                    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                    print(photo);
                  },
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 22),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(2);
                    _onItemTapped(3);
                  },
                  child: Container(
                    height: 41,
                    width: 66,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: _colors[3]),
                    child: const Icon(
                      Icons.favorite_outline,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BottomNavCubit>().onNavItemClick(3);
                    _onItemTapped(4);
                  },
                  child: Container(
                    height: 41,
                    width: 66,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: _colors[4]),
                    child: const Icon(
                      Icons.message_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
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
