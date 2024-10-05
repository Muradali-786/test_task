import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Close Work Order',
            style: TextStyle(fontSize: 10, color: kSecondry),
          ),
          const SizedBox(width: 2),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: GestureDetector(
              onTap: (){

              },
              child:PopupMenuButton<String>(
                color: kWhite,
                onSelected: (value) async {
                  switch (value) {
                    case 'View':

                      break;
                    case 'Edit':

                      break;

                    case 'Delete':

                      break;
                    default:
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem<String>(
                    value: 'View',
                    height: 25,
                    child: Text(
                      'View',
                      style: TextStyle(
                          color:
                          kGrey85,
                      fontSize: 10
                      ), // Color for the View text
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Edit',
                    height: 25,
                    child: Text(
                      'Edit',
                      style: TextStyle(color: kPrimary,
                      fontSize: 10
                      ),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Delete',
                    height: 25,
                    child: Text(
                      'Delete',
                      style: TextStyle(color: kAlertColor,fontSize: 10),
                    ),
                  ),
                ],
                child: const Icon(Icons.arrow_drop_up,size: 12,),
              ),
            ),
          )
        ],
      ),
    );
  }


}


