import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bloc/recently_view_bloc.dart';

class RecentlyViewedContainer extends StatefulWidget {
  const RecentlyViewedContainer({super.key});

  @override
  State<RecentlyViewedContainer> createState() => _RecentlyViewedContainerState();
}

class _RecentlyViewedContainerState extends State<RecentlyViewedContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentlyViewedBloc, RecentState>(
      builder: (context, state) {
        return SizedBox(
          height: 246,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final product = state.data[index];
              return Container(
                height: 246,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffF5F5F5),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SvgPicture.asset(
                            product.image,
                            fit: BoxFit.fill,
                            height: 174,
                            width: 250,
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 16,
                          child: GestureDetector(
                            onTap: () => context.read<RecentlyViewedBloc>().onLiked(index, true),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: state.data[index].isLoved ? const Color(0xffFF5858) : Colors.white.withOpacity(0.7),
                              child: Icon(
                                Icons.favorite_outline,
                                color: state.data[index].isLoved ? Colors.white : const Color(0xffFF5858),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              product.productName,
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: const Color(0xff3C3C3C),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '₹ ${product.price}',
                              style: GoogleFonts.firaSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff3C3C3C),
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
