import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'icons_image.dart';

class SignupOption extends StatelessWidget {
  const SignupOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconsImage(
          images: SvgPicture.asset('assets/images/Google.svg'),
        ),
        IconsImage(
          images: SvgPicture.asset('assets/images/Twitter.svg'),
        ),
        IconsImage(
          images: SvgPicture.asset('assets/images/Apple.svg'),
        )
      ],
    );
  }
}
