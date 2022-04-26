import 'package:flutter/material.dart';
import 'package:myapp/widgets/footer.dart';
import 'package:myapp/widgets/navbar.dart';

class LearnMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              NavBar(),
              Container(
                height: 300.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/about_banner.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Column(children: [
                const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    "To your next destination",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                ),
                Stack(
                  children: const [
                    Text("Explore the world while feeling at home")
                  ],
                ),
              ]),
            ],
          ),
          bottomNavigationBar: SizedBox(
            height: 90.0,
            child: Footer(),
          )),
    );
  }
}
