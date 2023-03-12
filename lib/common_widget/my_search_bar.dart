import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: const Color(0xffDEDEDE),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for books, guitar and more...',
                hintStyle: GoogleFonts.abhayaLibre(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: const Color(0xff828282),
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Perform search with searchController.text
            },
            icon: const Icon(Icons.search),
            color: const Color(0xff999999),
          ),
        ],
      ),
    );
  }
}
