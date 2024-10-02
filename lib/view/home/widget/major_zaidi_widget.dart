import 'package:flutter/material.dart';

import '../../../configs/color/app_color.dart';
import '../../../configs/size_config.dart';

class MajorZaidiWidget extends StatelessWidget {
  const MajorZaidiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            border: Border.all(color: kGrey),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Center(
            child: Icon(
              Icons.group_sharp,
              size: 16,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.03),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Major Zaidi team',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 12,fontWeight: FontWeight.w500),
            ),
            const Text(
              '2024040820 | 20 Aug 24',
              style: TextStyle(fontSize: 8, color: kGrey85),
            ),
          ],
        )
      ],
    );
  }
}
