// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/signup.dart';
import 'package:project/widgets/bottomPosition.dart';
// import 'package:project/widgets/divider.dart';
import 'package:project/widgets/loginDetail.dart';
import 'package:project/widgets/position.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    var textSpan = TextSpan(
      text: '*',
      style: TextStyle(
        color: Colors.red,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          const position(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Image.asset(
                  'assets/image/lug.png',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text('Log In',
                        style: TextStyle(color: Colors.black, fontSize: 18)),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signUp()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 30, 
              child: Divider(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'E-mail Address ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: textField(),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: RichText(
                      text: TextSpan(
                        text: 'Password ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: textField1(),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 130.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Divider(),
                    ),
                  ),
                  Text(
                    '0r continue with',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                     child: Divider(),
                    ),
                  ),
                ],
              )
            ],
          ),
          bottomPosition(),
          Positioned(
            bottom: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: button(),
            ),
          ),
          Positioned(
            bottom: 90,
            left: 70,
            right: 70,
            child: Row(
              children: [
                 Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [Color(0xFFF0062E0), Color(0xFFF19AFFF)])),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/image/facebook.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [Color(0xFFFE1E1E1), Color(0xFFF8D8D8D)])),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/image/google.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [Color(0xFFF000000), Color(0xFFF323232)],
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/image/apple.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class button extends StatelessWidget {
  const button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('LOGIN'),
      style: btnStyle(Colors.white, Color(0xFF1B65A1)),
    );
  }
}
