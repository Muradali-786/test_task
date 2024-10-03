import 'package:flutter/material.dart';
import 'package:test_task/configs/size_config.dart';
import 'package:test_task/view/home/widget/widgets.dart';
import '../../../configs/color/app_color.dart';

class InventorySummaryWidget extends StatelessWidget {
  const InventorySummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: SizeConfig.screenHeight * 0.052,
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.screenHeight * 0.005,

        ),
        decoration: const BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(color: kGrey),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderText(title: 'Total Entries', subtitle: '15'),
            HeaderText(
              title: 'Total Quantity (kg)',
              subtitle: '1875',
              disableBorder: false,
            ),
            HeaderText(
                title: 'Total Cost (Pkr)', subtitle: '404,900'),
          ],
        ),
      ),
    );
  }
}
