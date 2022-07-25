import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavTeam extends StatelessWidget {
  const FavTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 0, 36, 0),
      child: Row(
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
                height: 14,
              ),
              Text(
                'South Africa',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Color(0xff494A4A),
                    child: Icon(Icons.add_outlined)),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Follow',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Color(0xff494A4A),
                    child: Icon(Icons.add_outlined)),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Follow',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
