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
            Expanded(child: Container()),
            //Image.network(''),
            Expanded(
              flex: 2,
              child: textfield(
                text: 'email',
                ispassword: false,
              ),
            ),
            Expanded(
                child: textfield(
                    text: 'password',
                    ispassword: true,),),
              Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: 180,
                  color: constant.dayprimary,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: constant.dayprimary,

                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),

                    onPressed: (){},child: Text('login',
                  style:TextStyle(
                    fontSize: 20.0,
                    color: constant.textPrimary,
                  ),
                  ),),
                ),
              ),
              )


          ],
        ),
      ),
    );
  }
}
