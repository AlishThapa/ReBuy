import 'package:after_exam/module/my_account/modals/account_formfield_modals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 21),
        itemCount: accountdetails.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                accountdetails[index].title,
                style: GoogleFonts.firaSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3c3c3c),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:const Color(0xffEAEAEA),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        style: GoogleFonts.firaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff656565),
                        ),
                        decoration: InputDecoration(
                          hintText: accountdetails[index].formhinttext,
                          hintStyle: GoogleFonts.firaSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff656565),
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit,color: Color(0xff898989),),
                      // color: const Color(0xff656565),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
