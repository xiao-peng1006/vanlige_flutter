import 'package:flutter/material.dart';
import 'package:myapp/widgets/signin_option_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherSignInCard extends StatelessWidget {
  const OtherSignInCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SigninOptionButton(icon: Icon(FontAwesomeIcons.apple, color: Colors.black), text: 'Continue with Apple'),
          SigninOptionButton(icon: Icon(FontAwesomeIcons.google, color: Colors.black), text: 'Continue with Google'),
          SigninOptionButton(icon: Icon(FontAwesomeIcons.facebook, color: Colors.black), text: 'Continue with Facebook'),
        ],
      ),
    );
  }
}
