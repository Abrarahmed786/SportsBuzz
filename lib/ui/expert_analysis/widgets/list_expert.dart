import 'package:flutter/material.dart';
import 'package:sportsbuzz/ui/expert_analysis/widgets/card_expert.dart';

class ListExpert extends StatelessWidget {
  const ListExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    CardExpert(),
                    SizedBox(
                      width: 16,
                    ),
                    CardExpert(),
                    SizedBox(
                      width: 16,
                    ),
                    CardExpert(),
                    SizedBox(
                      width: 16,
                    ),
                    CardExpert(),
                  ],
                ))),
      ],
    );
  }
}
