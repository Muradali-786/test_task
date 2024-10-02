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
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 10, color: Colors.black54),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.arrow_drop_down,
            size: 15,
          )
        ],
      ),
    );
  }
}

class ViewWorkOrder2 extends StatelessWidget {
  const ViewWorkOrder2({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.04,
      width: SizeConfig.screenWidth * 0.35,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'View Work Order',
            style: TextStyle(fontSize: 10, color: kBlack),
          ),
          SizedBox(width: 4),
          Icon(
            Icons.arrow_drop_down,
            size: 15,
          )
        ],
      ),
    );
  }
}
