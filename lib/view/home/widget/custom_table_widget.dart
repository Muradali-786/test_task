import 'package:flutter/material.dart';

import '../../../configs/color/app_color.dart';
import '../../../configs/size_config.dart';

class TableHeaderRow extends StatelessWidget {
  const TableHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _tableHeaderText('Customer ID'),
          _tableHeaderText('Customer Name'),
          _tableHeaderText('Branch Name'),
          _tableHeaderText('Trip'),
          _tableHeaderText('Quantity (Kg)'),
        ],
      ),
    );
  }

  Widget _tableHeaderText(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 8,
        color: kBlack,
      ),
    );
  }
}

class CustomDataTable extends StatelessWidget {
  final ScrollController controller;
  const CustomDataTable({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.screenHeight * 0.24,
      child: Padding(
        padding: const EdgeInsets.only(right: 2),
        child: Scrollbar(
          controller: controller,
          trackVisibility: false,
          thumbVisibility: true,
          interactive: true,
          child: ListView.builder(
            controller: controller,
            itemCount: 6,
            itemBuilder: (context, index) {
              bool isEvenRow = index % 2 == 0;
              return Padding(
                padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
                child: Container(
                  height: SizeConfig.screenHeight * 0.038,
                  decoration: BoxDecoration(
                      color: isEvenRow ? Colors.blue[100] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildText('GLJN-2',flex: 2),
                      _buildText('Gloria jean',flex: 2),
                      _buildText('Head Office',flex: 2),
                      _buildText('-',flex: 1),
                      _buildText('1000',flex: 1),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildText(String value,{required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        value,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w300,
          color: kBlack,
        ),
      ),
    );
  }
}

