import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.route, this.text});
  final route;
  final text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(343, 56),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 12, bottom: 12),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
