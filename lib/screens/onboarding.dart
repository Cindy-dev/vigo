import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  static const routeName = 'onboard';
  Onboarding({Key key}) : super(key: key);

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1FF1E3), Color(0xff8135F9)],
  ).createShader(Rect.fromLTWH(0.0, 0, 200, 70));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/vigo.jpeg'))),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, right: 10),
                height: 311,
                width: 82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('asset/image/Rectangle 30.png'),
                        fit: BoxFit.contain)),
              ),
              Container(
                height: 243,
                width: 82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('asset/image/Rectangle 34.png'),
                        fit: BoxFit.contain)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    padding: EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              //  Color(0xffFFFFFF),
                              Color(0xff1FF1E3),
                              Color(0xff8135F9),
                            ],
                            begin: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 177,
                    width: 82,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage('asset/image/Rectangle 33.png'),
                            fit: BoxFit.contain)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    width: 82,
                    height: 82,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                height: 243,
                width: 82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('asset/image/Rectangle 31.png'),
                        fit: BoxFit.contain)),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Build connections.\n Build wealth.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 28,
                  foreground: Paint()..shader = linearGradient),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Vigoplace integrates all of your personal, business\n and online interaction needs into one simple \n user-friendly application.',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(15, 20, 12, 20),
            height: 48,
            width: 388,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  // Color(0xffFFFFFF),
                  Color(0xff1FF1E3),
                  Color(0xff8135F9),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(15, 0, 12, 20),
            height: 48,
            width: 388,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff8135F9), width: 2)),
            child: Text(
              'Sign up',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff8135F9),
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
