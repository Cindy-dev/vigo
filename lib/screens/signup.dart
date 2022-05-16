import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  static const routeName = 'signup';
  const Signup({Key key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
      new TextEditingController();
  bool _obscureText = true;
  @override
  void initState() {
    _obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/vigo.jpeg'))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Text(
                'Sign up to gain access',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 19,
                    color: Color(0xff8135F9),
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        hintText: 'James Chimdindu',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.alternate_email_sharp,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Jameschimdindu',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.email,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Jameschimdindu@gmail.com',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.date_range,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        hintText: 'July 13 1997',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 20,
                            color: Color(0xff8E8F99),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 20,
                          color: Color(0xff8E8F99),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 20,
                            color: Color(0xff8E8F99),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Color(0xffD1D2D8),
                                width: 2,
                                style: BorderStyle.solid))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: FittedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.check_box_outline_blank),
                          RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                  text: ' I agree to the ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Nunito',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  children: [
                                    TextSpan(
                                      text: 'Terms & Conditions ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff8135F9),
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                      text: 'and ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff8135F9),
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700),
                                    )
                                  ])),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'login'),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(12, 20, 12, 20),
                      height: 48,
                      width: 388,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            ////Color(0xff8135F9),
                            //Color(0xffFFFFFF),
                            Color(0xff1FF1E3),
                            Color(0xff8135F9),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'login'),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff8135F9),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700),
                        children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff8135F9),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700),
                      )
                    ])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
