import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/widgets/bottomPosition.dart';
import 'package:project/widgets/position.dart';

import 'package:project/constants.dart';
class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
           position(),
            bottomPosition(),
          AppBar(
            backgroundColor: Colors.transparent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80,left: 140),
                child: Image.asset(
                  'assets/image/airplane.png',
                  height: 0.35.sh,
                  // width:1.sw,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Text(
             'What Are ',
                    style: textTheme. labelLarge,
                     ),
          ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Text(
             ' Your Looking For?',
                    style: textTheme.labelLarge,
                     ),
          ),
          SizedBox(
                height: 10.h,
              ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Text(
             'Make your luggage experience more memorable',
                    style: textTheme.labelMedium,
                     ),
          ),
          SizedBox(
            height: 20.h,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
             child: Row(
              children:[
               Container(
                height: 150.h,
               width: 150.w,
                  color: Colors.amber,
                ),
                SizedBox(
            width: 20.w,
          ),
                Container(
                   height: 150.h,
               width: 150.w,
                  color: Colors.blue,
                 
                ),
              ]
             
                       ),
           )

            ],
            
          ),
         
         
        ],
      ),
    );
  }
}
