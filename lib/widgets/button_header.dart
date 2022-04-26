import 'package:flutter/material.dart';
import 'package:myapp/widgets/time_dropdown.dart';

typedef void DateCallback(DateTime date, TimeOfDay time);

class ButtonHeader extends StatefulWidget {
  final String header;
  final DateCallback callback;

  ButtonHeader({required this.header, required this.callback});

  @override
  _ButtonHeaderState createState() => _ButtonHeaderState();
}

class _ButtonHeaderState extends State<ButtonHeader> {
  late DateTime date;
  late TimeOfDay time;

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 40.0,
              child: Text(
                widget.header,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),

            // const VerticalDivider(
            //   width: 10,
            //   thickness: 1,
            //   indent: 5,
            //   endIndent: 5,
            //   color: Colors.grey,
            // ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                  onPressed: () {
                    _pickDate();
                  },
                  label: Text(
                    "${date.month}/${date.day}/${date.year}",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  )),
            ),
            SingleChildScrollView(
              child: TimeDropDownButton(
                callback: (time) => setState(() {
                  this.time = time;
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _pickDate() async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate != null) {
      setState(() {
        date = newDate;
      });
      widget.callback(date, time);
    }
  }
}
