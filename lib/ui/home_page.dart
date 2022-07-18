import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsbuzz/widgets/grids.dart';
import 'package:sportsbuzz/widgets/team_player_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 31,
              width: 125,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
          ],
        ),
        backgroundColor: const Color(0xff000000),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Image.asset(
              'assets/southafrica_cricket_logo.png',
              height: 107,
              width: 105,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'South Africa',
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: const Color(
                0xffffffff,
              ),
            ),
          ),
          Text(
            'RANKING',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(
                0xffffffff,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff464748).withOpacity(0.41),
                ),
                height: 72,
                width: 74,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff464748).withOpacity(0.41),
                    ),
                    height: 64.3,
                    width: 74,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ODI',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                        Text(
                          '3',
                          style: GoogleFonts.openSans(
                            fontSize: 29,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff464748).withOpacity(0.41),
                ),
                height: 72,
                width: 74,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffFF9D42),
                    ),
                    height: 64.3,
                    width: 74,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'TEST',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.openSans(
                            fontSize: 29,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff464748).withOpacity(0.41),
                ),
                height: 72,
                width: 74,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff464748).withOpacity(0.41),
                    ),
                    height: 64.3,
                    width: 74,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'T20',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                        Text(
                          '3',
                          style: GoogleFonts.openSans(
                            fontSize: 29,
                            fontWeight: FontWeight.w600,
                            color: const Color(
                              0xffffffff,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'PLAYING XI',
            style: GoogleFonts.openSans(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: const Color(
                0xffFF9D42,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TeamPlayerNameCard(),
              SizedBox(
                width: 24,
              ),
              TeamPlayerNameCard(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          // Grids(),
          // SampleScreen(),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
