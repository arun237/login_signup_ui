// @dart=2.9
import 'package:flutter/material.dart';
import 'package:login_signup_ui/components/containertextemail.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignInForm());
  }
}

class SignInForm extends StatefulWidget {
  SignInForm({Key key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text('SignIn',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold)),
                  ),
                  Containertextfield(
                    color: Colors.purple[100],
                    hinttext: 'Email',
                    size: size,
                    email: _email,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(29.0)),
                    width: 300,
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.purple[400],
                      controller: _password,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.purple[400],
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: Colors.purple[400],
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29.0),
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.purple[400]),
                            padding: MaterialStateProperty.resolveWith(
                                (states) => EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 24))),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New user?',
                          style: TextStyle(color: Colors.purple[400]),
                        ),
                        SizedBox(
                          width: 03,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text("Sign Up",
                              style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0.2),
                    width: 300,
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.purple[100],
                          height: 1.5,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                                color: Colors.purple[400],
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: Colors.purple[100],
                          height: 1.5,
                        )),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.purple[100])),
                        child: SvgPicture.asset(
                          'images/google.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.purple[100])),
                        child: SvgPicture.asset(
                          'images/twitter.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Colors.purple[100])),
                        child: SvgPicture.asset(
                          'images/facebook.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image(
            image: AssetImage("images/signup2.png"),
            // width: size.width,
            height: 660,
            width: 900,
          ),
        ],
      ),
    );
  }
}
