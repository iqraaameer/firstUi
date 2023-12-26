import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/gettingStarted.dart';
import 'package:project/widgets/position.dart';
import 'package:project/widgets/bottomPosition.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          const position(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/image4.png'),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Welcome to LUG',
                  style: textTheme.bodyLarge,
                ),
                Text(
                  'Your Travel Valet!',
                  style: textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nihil tenetur minus quidem.',
                      style: textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
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
          MaterialPageRoute(builder: (context) => gettingStarted()),
        );
      },
      child: Text('NEXT'),
      style: btnStyle(Colors.white, Color(0xFF1B65A1)),
    );
  }
}
