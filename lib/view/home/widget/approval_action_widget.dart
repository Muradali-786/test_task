import 'package:flutter/material.dart';
import 'package:test_task/configs/size_config.dart';
import 'package:test_task/view/home/widget/widgets.dart';

import '../../../configs/color/app_color.dart';

class ApprovalActionWidget extends StatelessWidget {
  const ApprovalActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const CustomTitleBox(
                  title: 'Approve',
                  kBoxColor: Colors.greenAccent,
                  kBorderColor: Colors.greenAccent,
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.02),
                CustomTitleBox(
                  title: 'Reject',
                  kBoxColor: Colors.pinkAccent.withOpacity(0.5),
                  kBorderColor: Colors.pinkAccent,
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.02),
                const CustomTitleBox(
                  title: 'Request Changes',
                  kBoxColor: kWhite,
                ),
              ],
            ),
          ),
          const WorkOrderWidget(
            title: '20 Aug 2024',
          ),
        ],
      ),
    );
  }
}
