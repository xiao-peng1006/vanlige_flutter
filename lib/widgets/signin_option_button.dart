import 'package:flutter/material.dart';

class SigninOptionButton extends StatelessWidget {

  SigninOptionButton({required this.icon, required String this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: 380,
        margin: const EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.zero,
        ),
        child: TextButton.icon(
          icon: icon,
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith(
                (states) => const Color(0xFFEFEFEF)),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
