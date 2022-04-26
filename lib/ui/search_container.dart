import 'package:flutter/material.dart';
import 'package:myapp/widgets/button_header.dart';

class SearchContainer extends StatefulWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  _SearchContainerState createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  DateTime pickUpDate = DateTime.now(),
      dropOffDate = DateTime.now().add(new Duration(days: 1));
  TimeOfDay pickUpTime = TimeOfDay(hour: 10, minute: 0),
      dropOffTime = TimeOfDay(hour: 10, minute: 0);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 300.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/home_banner.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
            width: 530.0,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular((width < 800.0) ? 8.0 : 100.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.14),
                  spreadRadius: 4,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.white,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              if (width < 800.0) {
                return IntrinsicHeight(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  ButtonHeader(
                    header: "From",
                    callback: (DateTime pickUpDate, TimeOfDay pickUpTime) =>
                        setState(() {
                      this.pickUpDate = pickUpDate;
                      this.pickUpTime = pickUpTime;
                    }),
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey,
                  ),
                  ButtonHeader(
                    header: "Until",
                    callback: (DateTime dropOffDate, TimeOfDay dropOffTime) =>
                        setState(() {
                      this.dropOffDate = dropOffDate;
                      this.dropOffTime = dropOffTime;
                    }),
                  ),
                  const Divider(
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.grey,
                  ),
                  InkWell(
                    child: Container(
                      height: 40.0,
                      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Text(
                        'Search for cars',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: () {
                      _findVehicle();
                    },
                  )
                ]));
              } else {
                return IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonHeader(
                        header: "From",
                        callback: (DateTime pickUpDate, TimeOfDay pickUpTime) =>
                            setState(() {
                          this.pickUpDate = pickUpDate;
                          this.pickUpTime = pickUpTime;
                        }),
                      ),
                      const VerticalDivider(
                        width: 5,
                        thickness: 1,
                        indent: 4,
                        endIndent: 4,
                        color: Colors.grey,
                      ),
                      ButtonHeader(
                        header: "Until",
                        callback:
                            (DateTime dropOffDate, TimeOfDay dropOffTime) =>
                                setState(() {
                          this.dropOffDate = dropOffDate;
                          this.dropOffTime = dropOffTime;
                        }),
                      ),
                      InkWell(
                        child: Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          _findVehicle();
                        },
                      )
                    ],
                  ),
                );
              }
            }))
      ],
    );

    // TODO: implement build
    throw UnimplementedError();
  }

  _pickUpDateTime(DateTime pickUpDate, TimeOfDay pickUpTime) {
    print(
        "pick up at ${pickUpDate.month}/${pickUpDate.day}/${pickUpDate.year} ${pickUpTime.hour}:${pickUpTime.minute}");
  }

  _dropOffDateTime(DateTime dropOffDate, TimeOfDay dropOffTime) {
    print(
        "drop off at ${dropOffDate.month}/${dropOffDate.day}/${dropOffDate.year} ${dropOffTime.hour}:${dropOffTime.minute}");
  }

  findVehicle() {
    print(
        "search cars: From ${pickUpDate.month}/${pickUpDate.day}/${pickUpDate.year}-${pickUpTime.hour}:${pickUpTime.minute == 0 ? "00" : pickUpTime.minute} "
        "to ${dropOffDate.month}/${dropOffDate.day}/${dropOffDate.year}-${dropOffTime.hour}:${dropOffTime.minute == 0 ? "00" : dropOffTime.minute}");
  }

  _findVehicle() {
    print(
        "seach from ${pickUpDate} ${pickUpTime} to ${dropOffDate} ${dropOffTime}");
  }
}
