import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/screens/home.dart';
import 'package:project/widgets/bottomPosition.dart';
import 'package:project/widgets/loginDetail.dart';
import 'package:project/widgets/position.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
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
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                child: Divider(),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Full Name ',
                         style: textTheme. titleSmall,
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: EnterName(),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'E-mail Address ',
                         style: textTheme. titleSmall,
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: email(),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Phone Number',
                         style: textTheme. titleSmall,
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: phoneNo(),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: RichText(
                        text: TextSpan(
                          text: 'Password ',
                           style: textTheme. titleSmall,
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
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: textField1(),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Confirm Password',
                            style: textTheme. titleSmall,
                        children: <TextSpan>[
                          textSpan,
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: confirmPassw(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
          bottomPosition(),
          Positioned(
            bottom: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ButtonWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class EnterName extends StatelessWidget {
  const EnterName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Full Name',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Colors.white70,
      ),
    );
  }
}

class email extends StatelessWidget {
  const email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Email Address',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Colors.white70,
      ),
    );
  }
}

class phoneNo extends StatelessWidget {
  const phoneNo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Your Phone Number',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Colors.white70,
      ),
    );
  }
}

class confirmPassw extends StatelessWidget {
  const confirmPassw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        fillColor: Colors.white70,
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
  context: context,
  builder: (context) => Stack(
    children: [
      bottomPosition(),
      const position(),
      Container(
        height: 400.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
  radius: 40,
  backgroundImage: AssetImage('assets/image/done.png'),
),

            ),
            SizedBox(height: 30.h),
            Text(
              'Congratulations',
              style: textTheme. displayLarge,
            ),
            SizedBox(height: 30.h),
            Text(
              'Account has been created successfully!',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 40.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );

              },
              child: Text('LOGIN'),
              style: btnStyle(Colors.white, Color(0xFF1B65A1)),
            ),
          ],
        ),
      ),
    ],
  ),
);

      },
      child: Text('SIGN UP'),
      style: btnStyle(Colors.white, Color(0xFF1B65A1)),
    );
  }
}
