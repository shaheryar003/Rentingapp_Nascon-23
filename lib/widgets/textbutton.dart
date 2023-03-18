import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textBtn extends StatelessWidget {
  const textBtn({super.key, this.route, this.text});

  final route;
  final text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
