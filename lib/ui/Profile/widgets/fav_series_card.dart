import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavSeriesCard extends StatelessWidget {
  const FavSeriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/southafrica_cricket_logo.png',
                          height: 40,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/southafrica_cricket_logo.png',
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'India tour of\nEngland, 2022',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/vector.png',
                      height: 37,
                      color: Color(0xffBABABA),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Follow',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/vector.png',
                      height: 37,
                      color: Color(0xffBABABA),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Follow',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
