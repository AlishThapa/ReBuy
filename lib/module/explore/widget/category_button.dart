import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({Key? key}) : super(key: key);

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  List<String> categories = ['Books', 'Game', 'Music', 'Camera'];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        categories.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 30,
              width: 95,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), color: Color(0xff3C3C3C)),
              child: Text(
                categories[index],
                style: GoogleFonts.adamina(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: index == selectedIndex ? Colors.orange:  const Color(0xffE2E2E2),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class CategoryButton extends StatefulWidget {
//   const CategoryButton({Key? key, required this.name}) : super(key: key);
//   final String name;
//
//   @override
//   State<CategoryButton> createState() => _CategoryButtonState();
// }
//
// class _CategoryButtonState extends State<CategoryButton> {
//   bool isTapped =true;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isTapped =!isTapped;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(right: 10),
//         child: Container(
//           height: 30,
//           width: 95,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(22),
//             color: Color(0xff3C3C3C),
//           ),
//           child: Text(
//             widget.name,
//             style: GoogleFonts.adamina(
//               fontSize: 18,
//               fontWeight: FontWeight.w700,
//               color:  isTapped ? Color(0xffE2E2E2)  : Colors.orange,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
