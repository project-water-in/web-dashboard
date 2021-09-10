import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

import '../tasks.dart';

class new_task extends StatefulWidget {
  const new_task({key}) : super(key: key);

  @override
  _new_taskState createState() => _new_taskState();
}

class _new_taskState extends State<new_task> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'None';
    var items = [
      'None',
      'Vikram',
      'Patil',
    ];
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
        Container(
          height: 50,
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                hintText: "HouseHold",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        SizedBox(height: 20),
        Row(children: [
          CustomText(
            text: "Start Date",
            color: active,
            size: 15,
            weight: FontWeight.bold,
          ),
          SizedBox(width: 320),
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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                  },
                ),
                SizedBox(width: 30),
                SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "DD/YY/MM",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                  },
                ),
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
                    hintText: "TODO",
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
              value: dropdownvalue,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownvalue = newValue;
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
            ],
          ),
        ),
      ],
    ));
  }
}
