import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return InitWidget();
  }

  Widget InitWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset('assets/images/chef.png'),
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffBA1A1A),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        color: Colors.grey[200],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        cursorColor: Color(0xffBA1A1A),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            hintText: 'Enter Email',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(),
                        color: Colors.grey[200],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
                        cursorColor: Color(0xffBA1A1A),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.key,
                              color: Colors.black,
                            ),
                            hintText: 'Enter Password',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Text('Forget Password?'),
                        onTap: () => {},
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()))
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20, left: 20, top: 50),
                        padding: EdgeInsets.only(right: 20, left: 20),
                        alignment: Alignment.center,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff91a8d0),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
