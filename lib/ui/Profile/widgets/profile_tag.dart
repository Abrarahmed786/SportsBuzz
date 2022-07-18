import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTag extends StatelessWidget {
  const ProfileTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 20,
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 26,
            child: Icon(
              Icons.person_outline,
              color: Color(0xffffffff),
              size: 27,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text('Profile',
            style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ))
      ],
    );
  }
}
