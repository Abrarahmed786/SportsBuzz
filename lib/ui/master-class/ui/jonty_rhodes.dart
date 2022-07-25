import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsbuzz/ui/master-class/widgets/card_jr.dart';

class JR extends StatelessWidget {
  const JR({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff262627)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.lock_open_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'You have unlocked this master class',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              color: const Color(0xff1f2022),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'A Masterclass with',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Jonty Rhodes',
                    style: GoogleFonts.openSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffFF9D42)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Basics of Fielding & Agility',
                    style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.tv_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            '34 Episodes',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffFFFFFF)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.speed_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            '256 Minutes',
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xffFFFFFF)),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(46, 16, 46, 16),
                    child: Text(
                      "Encore and Paradox, India's top gamers, are part of the Revenant team that has represented India in the PMWL. They also qualified for the Call of Duty Mobile World Championship 2021 and represented India, South Asia, and the Middle East in the tournament. They have also been crowned the champions of the Ebullient Gaming India (EGI) Revamp Battle. This duo of Team Captain of Revenant and his Filter is set to make you a pro gamer.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'EPISODES',
                      style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffFF9D42)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.tv_outlined,
                      color: Color(0xffFF9D42),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff1F2022)),
                        ),
                        onPressed: () {},
                        child: const Text('ENGLISH')),
                    const SizedBox(
                      width: 16,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFF9D42)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'HINDI',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ],
            ),
            CardJR(),
            CardJR(),
            CardJR(),
            CardJR(),
            CardJR(),
            CardJR()
          ],
        ),
      ),
    );
  }
}
