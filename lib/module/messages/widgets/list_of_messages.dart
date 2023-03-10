import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modals/message_modals.dart';

class ListOfMessages extends StatefulWidget {
  const ListOfMessages({
    super.key,
  });

  @override
  State<ListOfMessages> createState() => _ListOfMessagesState();
}

class _ListOfMessagesState extends State<ListOfMessages> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: messageModals.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1.0,
            child: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.transparent,
                    foregroundImage: AssetImage(messageModals[index].assetsPath),
                    // child: SvgPicture.asset(assetsPath[1]),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            messageModals[index].productName,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xff3c3c3c),
                            ),
                          ),
                          Text(
                            messageModals[index].userName,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: const Color(0xff828282),
                            ),
                            overflow: TextOverflow.clip,
                            softWrap: true,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        messageModals[index].userMessages,
                        style: GoogleFonts.firaSans(
                          color: const Color(0xff8A8A8A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
