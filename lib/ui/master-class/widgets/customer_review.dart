import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsbuzz/ui/master-class/widgets/review_card.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
                RatingCard(),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
