import 'package:flutter/material.dart';
import 'package:se23/constants.dart' as constant;

class textfield extends StatelessWidget {
  final String text;
  final bool ispassword;
  final Function(String) onch;

  const textfield({
    super.key,
    required this.text,
    required this.ispassword, required this.onch,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: TextField(
          onChanged: onch,
          style: TextStyle(
            color: constant.dayprimary,
          ),
          obscureText: ispassword,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                color: constant.dayprimary,
                fontWeight: FontWeight.w500,
                fontSize: 30.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: constant.dayprimary,
                    width: 2,
                    style: BorderStyle.solid),
              )),
        ));
  }
}
