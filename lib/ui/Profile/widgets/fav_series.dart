import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsbuzz/ui/Profile/widgets/fav_series_card.dart';

import 'fav_team_card.dart';

class FavSeries extends StatelessWidget {
  const FavSeries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            height: 40.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF2A2B2C),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Text(
                    'Favourite Series',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '(0)',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF1F2022),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 18,
                ),
                FavSeriesCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
