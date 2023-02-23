import 'package:flutter/material.dart';
import '../constants.dart' as constant;
import 'package:se23/textfield.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Image.network(''),
           textfield(text: 'email',ispassword:false,

           ),
            textfield(text: 'password',ispassword:true,)
          ],
        ),
      ),
    );
  }
}



