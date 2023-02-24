import 'package:flutter/material.dart';
import 'package:se23/constants.dart' as constant;
class textfield extends StatelessWidget {
  final String text;
  final bool ispassword;
  const textfield(required String text, {
    super.key,
    required this.text, required this.ispassword
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: TextField(
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
              disabledBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    color: constant.dayprimary,
                    width:2,
                    style: BorderStyle.solid
                ),
              )
          ),
        )
    );
  }
}