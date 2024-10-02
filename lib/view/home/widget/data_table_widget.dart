import 'package:flutter/material.dart';

import '../../../configs/color/app_color.dart';
import '../../../configs/size_config.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.44,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              DataTable(
                columnSpacing: 7,
                dataRowMaxHeight: 50,
                headingRowHeight: 50,
                headingRowColor: WidgetStateProperty.all(Colors.white),
                columns: [
                  _dataColumn('Customer ID'),
                  _dataColumn('Customer Name'),
                  _dataColumn('Branch Code'),
                  _dataColumn('Trip'),
                  _dataColumn('Quantity (kg)'),
                ],
                rows: List<DataRow>.generate(
                  6, // Number of rows
                  (index) => DataRow(
                    color: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (index % 2 == 0) {
                          return Colors.blue[100];
                        }
                        return Colors.grey[200];
                      },
                    ),
                    cells: [
                      _dataCellText('ID${index + 1}'),
                      _dataCellText('Customer ${index + 1}'),
                      _dataCellText('B00${index + 1}'),
                      _dataCellText('-'),
                      _dataCellText('${(index + 1) * 10}'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataColumn _dataColumn(String title) {
    return DataColumn(
      label: Text(
        title,
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  DataCell _dataCellText(String value) {
    return DataCell(
      Text(
        value,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontSize: 8, fontWeight: FontWeight.w300, color: kBlack),
      ),
    );
  }
}

class CustomTableWidget extends StatelessWidget {
  const CustomTableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Table Header
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(color: kGrey),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Address', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Code', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Percentage',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.012),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              bool isEvenRow = index % 2 == 0;
              return Padding(
                padding:
                    const EdgeInsets.only(bottom: 5), // 5px gap between rows
                child: Container(
                  decoration: BoxDecoration(
                    color: isEvenRow ? Colors.blue[100] : Colors.grey[100],
                    borderRadius:
                        BorderRadius.circular(8), // 8px radius for rows
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Name $index'),
                      Text('Address $index'),
                      Text('Code $index'),
                      Text('${(index * 10) % 100}%'),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
