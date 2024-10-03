import 'package:flutter/material.dart';
import 'package:test_task/configs/size_config.dart';

import '../../../configs/color/app_color.dart';

class WorkOrderWidget extends StatelessWidget {
  final String title;
  const WorkOrderWidget({
    super.key,
    this.title = 'View Work Order',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.023,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 8, color: Colors.black54),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.arrow_drop_down,
            size: 10,
            color: kSecondry,
          )
        ],
      ),
    );
  }
}

class CloseWorkOrder extends StatelessWidget {
  const CloseWorkOrder({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.031,
      width: SizeConfig.screenWidth * 0.32,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Close Work Order',
            style: TextStyle(fontSize: 10, color: kSecondry),
          ),
          SizedBox(width: 2),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Icon(
              Icons.arrow_drop_up,
              size: 12,
              color: kSecondry,
            ),
          )
        ],
      ),
    );
  }
}
