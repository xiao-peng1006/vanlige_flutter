import 'package:flutter/material.dart';

typedef void TimeCallback(TimeOfDay time);

class TimeDropDownButton extends StatefulWidget {
  final TimeCallback callback;

  TimeDropDownButton({required this.callback});

  @override
  _TimeDropDownButtonState createState() => _TimeDropDownButtonState();
}

class _TimeDropDownButtonState extends State<TimeDropDownButton> {
  late String dropdownValue;
  final timeList = <String>[
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "1:00 PM",
    "1:30 PM",
    "2:00 PM",
    "2:30 PM",
    "3:00 PM",
    "3:30 PM",
    "4:00 PM",
    "4:30 PM",
    "5:00 PM",
    "5:30 PM",
    "6:00 PM",
    "6:30 PM",
  ];

  @override
  void initState() {
    super.initState();
    dropdownValue = "10:00 AM";
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            value: dropdownValue,
            style: const TextStyle(
              fontSize: 13,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: timeList.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? newTimeString) {
              setState(() {
                dropdownValue = newTimeString!;
              });
            }));

    // TODO: implement build
    throw UnimplementedError();
  }
}
