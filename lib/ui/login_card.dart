import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  late String email;
  late String password;

  @override
  void initState() {
    email = '';
    password = '';
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 60,
            child:  TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                labelText: 'Email',
              ),
              onChanged: (email) {
                setState(() {
                  this.email = email;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 60,
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                labelText: 'Password',
              ),
              onChanged: (password) {
                setState(() {
                  this.password = password;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
            child: const Text(
              'Forgot your password?',
            ),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 380,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () {
              print("email: ${this.email}, password: ${this.password}");
            },
          ),
        ],
      ),
    );
  }
}
