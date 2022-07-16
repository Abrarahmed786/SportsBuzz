import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamPlayerNameCard extends StatelessWidget {
  const TeamPlayerNameCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          // top: 38.0,
          // bottom: 16.0,
          // left: 36.0,
          // right: 24.0,
          ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 101.0,
            width: 147,
            margin: const EdgeInsets.only(top: 45.0),
            decoration: BoxDecoration(
              color: const Color(0xFF1F2022),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              // boxShadow: const <BoxShadow>[
              //   BoxShadow(
              //     color: Colors.black12,
              //     blurRadius: 10.0,
              //     offset: Offset(0.0, 10.0),
              //   ),
              // ],
            ),
          ),
          Container(
            height: 30.0,
            width: 147,
            margin: const EdgeInsets.only(top: 115.0),
            decoration: const BoxDecoration(
              color: Color(0xFF2A2B2C),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              // boxShadow: <BoxShadow>[
              //   BoxShadow(
              //     color: Colors.black12,
              //     blurRadius: 10.0,
              //     offset: Offset(0.0, 10.0),
              //   ),
              // ],
            ),
            child: Center(
              child: Text(
                'Player Name',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(
                    0xffffffff,
                  ),
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xffFAB500),
            radius: 52,
            child: CircleAvatar(
              radius: 49,
              backgroundColor: const Color(0xffffffff),
              child: Image.asset(
                'assets/southafrica_cricket_logo.png',
                height: 98,
                width: 98,
              ),
            ),
          )
        ],
      ),
    );
  }
}
