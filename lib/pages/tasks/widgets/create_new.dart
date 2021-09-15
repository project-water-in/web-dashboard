import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import '../tasks.dart';

// ignore: camel_case_types
class new_task extends StatefulWidget {
  const new_task({key}) : super(key: key);

  @override
  _new_taskState createState() => _new_taskState();
}

class _new_taskState extends State<new_task> {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    String name_value;
    var items = [
      'None',
      'Vikram',
      'Patil',
    ];

    String catogary_value;
    var catogary_list = ['Kitchen', 'Bathroom', 'Living Room'];

    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: "Create a Task",
              color: Colors.black,
              size: 25,
              weight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(height: 100),
        CustomText(
          text: "Task Name",
          color: active,
          size: 15,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Kitchen Work",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        SizedBox(height: 20),
        CustomText(
          text: "Catogary",
          color: active,
          size: 15,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 10),
        DropdownButton(
          hint: Text('Select Catogary'),
          value: catogary_value,
          icon: Icon(Icons.keyboard_arrow_down),
          onChanged: (newValue) {
            setState(() {
              catogary_value = newValue;
            });
          },
          items: catogary_list.map((items) {
            return DropdownMenuItem(value: items, child: Text(items));
          }).toList(),
        ),
        SizedBox(height: 20),
        Row(children: [
          CustomText(
            text: "Start Date",
            color: active,
            size: 15,
            weight: FontWeight.bold,
          ),
          SizedBox(width: 270),
          CustomText(
            text: "End Date",
            color: active,
            size: 15,
            weight: FontWeight.bold,
          ),
        ]),
        SizedBox(height: 10),
        Row(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  child: DateTimeField(
                    decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 300,
                  child: DateTimeField(
                    decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        CustomText(
          text: "Check List",
          color: active,
          size: 15,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Add the list of Tasks",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              icon: Icon(Icons.add_outlined),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20),
        CustomText(
          text: "Assign To",
          color: active,
          size: 15,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            DropdownButton(
              hint: Text('Select a Person'),
              value: name_value,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  name_value = newValue;
                });
              },
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              icon: Icon(Icons.add_outlined),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DriversPage()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: light,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: active, width: 0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Done",
                      color: active,
                      weight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DriversPage()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: light,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: active, width: 0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: CustomText(
                      text: "Cancel",
                      color: active,
                      weight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
