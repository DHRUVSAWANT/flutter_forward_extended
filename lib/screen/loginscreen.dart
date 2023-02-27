import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../constants.dart' as constant;
import 'package:se23/textfield.dart';

import 'mainscreen.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  late String email,password;
  int myvar=1;
  @override
  Widget build(BuildContext context) {
    final _auth =FirebaseAuth.instance;
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
                onch: (value){
                  email=value;
                },
              ),
            ),
            Expanded(
                child: textfield(
                    text: 'password',
                    ispassword: true,
                onch: (value){
                      password=value;
                },
                ),),
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

                    onPressed: () async{
                      try{
                  final newUser =
                  await _auth.signInWithEmailAndPassword(
                  email:email,password:password);
                  if (newUser.user !=null && myvar !=0){
    Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context)=> Mainscreen()));
                  }}
                  catch(e){
                  debugPrint('$e');
                  }
                  }
                    ,child: Text('login',
                  style:TextStyle(
                    fontSize: 20.0,
                    color: constant.textPrimary,
                  ),
                  ),),
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
