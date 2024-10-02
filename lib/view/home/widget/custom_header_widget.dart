import 'package:flutter/material.dart';

import '../../../configs/color/app_color.dart';


class HeaderText extends StatelessWidget {
  final String title, subtitle;

  final bool disableBorder;
  const HeaderText({
    super.key,
    required this.title,
    required this.subtitle,
    this.disableBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        border: disableBorder
            ? null
            : const Border.symmetric(vertical: BorderSide(color: kGrey)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: kGrey85),
          ),
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w500, color: kBlack),
          ),
        ],
      ),
    );
  }
}