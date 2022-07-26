import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardExpert extends StatelessWidget {
  const CardExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 137,
          width: 243,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ana.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        Container(
          width: 243,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
            color: Color(0xff1F2022),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 10, 12, 20),
            child: Text(
              'It is always challenging bowling in abroad...more',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
