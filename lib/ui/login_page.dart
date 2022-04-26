import 'package:flutter/material.dart';
import 'package:myapp/ui/login_card.dart';
import 'package:myapp/ui/other_sign_in_card.dart';
import 'package:myapp/widgets/footer.dart';
import 'package:myapp/widgets/navbar.dart';
import 'package:myapp/widgets/text_divider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            NavBar(),
            const Divider(
              thickness: 1,
            ),
            const Spacer(),
            LoginCard(),
            TextDivider(text: 'or'),
            OtherSignInCard(),
            const Spacer(),
          ],

        ),
        bottomNavigationBar: SizedBox(
          height: 90.0,
          child: Footer(),
        ),
      ),
    );
  }
}
