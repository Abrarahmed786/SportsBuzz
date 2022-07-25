import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardJR extends StatelessWidget {
  const CardJR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: Container(
              height: 283,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/jr.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.play_circle_filled_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text(
            'Meet Your Master',
            style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFF9D42)),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '00 : 17 : 19\tEpisode (1)',
            style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFFffff)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Jonty Rhodes, one of cricket’s greatest fielders across generations. With an experience of',
            style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFFffff)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'more...',
            style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFF9d42)),
          ),
          SizedBox(
            height: 24,
          ),
          Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
