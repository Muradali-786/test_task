import 'package:flutter/material.dart';
import 'package:test_task/view/home/widget/widgets.dart';

import '../../../configs/color/app_color.dart';
import '../../../configs/size_config.dart';

class CustomTitleText extends StatelessWidget {
  final String titleText;
  const CustomTitleText({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: Theme.of(context)
          .textTheme
          .labelLarge!
          .copyWith(fontSize: 15, fontWeight: FontWeight.w600),
    );
  }
}

class CustomList extends StatelessWidget {
  final int itemCount;
  const CustomList({super.key, this.itemCount = 1});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: SizeConfig.screenHeight * 0.068,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: kGrey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            border: Border.all(color: kGrey),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Center(
                          child: Icon(Icons.group_sharp,size: 17),
                        ),
                      ),
                      SizedBox(width: SizeConfig.screenWidth * 0.02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Major Zaidi team',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const Text(
                            'work order',
                            style: TextStyle(fontSize: 8, color: kGrey85),
                          ),
                        ],
                      )
                    ],
                  ),
                  const CloseWorkOrder(),
                ],
              ),
            ),
          );
        });
  }
}

class CustomTitleBox extends StatelessWidget {
  final String title;
  final Color kBoxColor;
  final Color kBorderColor;
  const CustomTitleBox({
    super.key,
    required this.title,
    this.kBoxColor = kWhite,
    this.kBorderColor = kGrey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.023,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: kBoxColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: kBorderColor),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: kBlack, fontSize: 8),
        ),
      ),
    );
  }
}
