import 'package:after_exam/module/messages/widgets/list_of_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widget/button_back.dart';
import '../../common_widget/header_text.dart';
import '../../common_widget/my_search_bar.dart';
import '../navigation_bar/navigation_screen.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonBack(),
              SizedBox(width: 21),
              HeaderText(
                title: 'Messages',
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
          const SizedBox(height: 15),
          const ListOfMessages()
        ],
      ),
    );
  }
}
