import 'package:flutter/material.dart';
import 'package:myapp/widgets/navbar_item.dart';
import 'package:myapp/widgets/navbar_button.dart';

double collapsableHeight = 0.0;

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 49.0),
          duration: const Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 800.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: navBarItems,
            ),
          ),
        ),
        Container(
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                child: const Image(
                  image: AssetImage("assets/Vanlige_w_text.png"),
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/',
                  );
                },
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 800.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 240.0;
                        });
                      } else if (collapsableHeight == 240.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                    children: navBarItems,
                  );
                }
              })
            ],
          ),
        ),
      ],
    );
  }
}
