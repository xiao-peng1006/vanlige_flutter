import 'package:flutter/material.dart';

const IconData copyright = IconData(0xe198, fontFamily: 'MaterialIcons');

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color(0xFFF4F4F4),
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.5,
          )
        )
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Copyright ©2022  Vanlige    '),
              Text('Terms    Privacy    Sitemap')
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 30))
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
