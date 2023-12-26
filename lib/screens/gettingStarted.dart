// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/constants.dart';
import 'package:project/screens/login.dart';
import 'package:project/widgets/bottomPosition.dart';
import 'package:project/widgets/position.dart';

class gettingStarted extends StatelessWidget {
  const gettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const position(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/image5.png',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Getting Started',
                    style: textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: facebookButton()),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GoogleButton(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: appleButton(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                      child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                         child: Divider(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          bottomPosition(),
          Positioned(
            bottom: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33.0),
              child: button(),
            ),
          ),
        ],
      ),
    );
  }
}

class appleButton extends StatelessWidget {
  const appleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 53,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 0, 0, 1),
            Color.fromRGBO(94, 93, 93, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
         style: btnStyle(
          Colors.white, Color.fromARGB(0, 0, 0, 1),
          
        ),
        onPressed: () {},
        child: Text(
          "Continue with Apple",
          style: textTheme.titleMedium,
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 53,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
             Color.fromRGBO(248, 56, 77, 1),
            Color(0xFFE6162D),
            Color(0xFFBD0D21),
           
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style:  btnStyle(
           Colors.white,Color.fromARGB(0, 73, 12, 12),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(30),
          // ),
        ),
        onPressed: () {},
        child: Text(
          "Continue with Google",
          style: textTheme.titleMedium,
        ),
      ),
    );
  }
}

class facebookButton extends StatelessWidget {
  const facebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 53,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0062E0),
            Color(0xFF19AFFF),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style: btnStyle(
           Colors.white, Color.fromARGB(0, 98, 224, 1),
        ),
        onPressed: () {},
        child: Text(
          "Continue with Facebook",
          style: textTheme.titleMedium,
        ),
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
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => login()),
        );
      },
      child: Text("LET'S GET STARTED"),
      style: btnStyle(Colors.white, Color(0xFF1B65A1)),
    );
  }
}
