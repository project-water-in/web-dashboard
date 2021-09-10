import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

/// Example without datasource
class AvailableDriversTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Tasks Overview",
                color: Colors.black,
                weight: FontWeight.bold,
              ),
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text(""),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(
                  label: Text(''),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(text: "Kitchen")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "")),
                        DataCell(CustomText(text: "12")),
                      ]))),
        ],
      ),
    );
  }
}
