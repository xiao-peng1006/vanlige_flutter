import 'package:flutter/material.dart';

Color selected = const Color(0xFFBCBCBC);
Color notSelected = const Color(0xFF414341);

List<Widget> navBarItems = [
  NavBarItem(
    label: 'About',
    api: 'about',
  ),
  NavBarItem(
    label: 'Learn more',
    api: 'learn-more',
  ),
  NavBarItem(
    label: 'Search',
    api: 'search',
  ),
  NavBarItem(
    label: 'Login',
    api: 'login',
  ),
];

class NavBarItem extends StatefulWidget {
  final String label;
  final String api;

  NavBarItem({
    required this.label,
    required this.api,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          hoverColor: Colors.transparent,
          onTap: () {
            Navigator.pushNamed(
                context,
                '/${widget.api}',
            );
          },
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.label,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }

}