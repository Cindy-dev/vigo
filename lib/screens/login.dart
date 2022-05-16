import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  static const routeName = 'login';
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();
  bool _obscureText = true;
  @override
  void initState() {
    _obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
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
                'Login to continue',
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
                        hintText: 'Username or email address',
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
                    controller: _passwordController,
                    obscureText: _obscureText,
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
                        hintText: 'Password',
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'tab'),
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
                        'Login',
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
              onTap: () => Navigator.pushNamed(context, 'signup'),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: Text(
                  'Dont have an account yet? Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff8135F9),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }
}
