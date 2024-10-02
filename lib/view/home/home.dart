import 'package:flutter/material.dart';
import 'package:test_task/configs/color/app_color.dart';
import 'package:test_task/configs/components/custom_app_bar.dart';
import 'package:test_task/configs/size_config.dart';

import 'widget/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Approvals',
        leading: BackIconButton(),
        showActionButton: true,
        actionWidget: ActionIconButton(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTabBar(),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                const CustomTitleText(titleText: 'Pending Work Orders'),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: kGrey,
                      ),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MajorZaidiWidget(),
                          CloseWorkOrder(),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      Row(
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
                      SizedBox(height: SizeConfig.screenHeight * 0.012),
                      Container(
                        height: SizeConfig.screenHeight * 0.051,
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
                      const CustomDataTable()
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                const CustomList(),
                SizedBox(height: SizeConfig.screenHeight * 0.012),
                const CustomTitleText(titleText: 'Approved Work Order'),
                const CustomList(itemCount: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
