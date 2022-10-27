import 'package:flutter/material.dart';
import 'package:flutter_miniproject/login_screen.dart';
import 'package:flutter_miniproject/profile/Account_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb4c8ea),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Color(0xffBA1A1A),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lydia Yusanti',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          ProfileMenu(
            icon: 'images/user.png',
            text: 'My Account',
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyAccount()));
            },
          ),
          ProfileMenu(
            icon: 'images/wish-list.png',
            text: 'My Favorite',
            press: () {},
          ),
          ProfileMenu(
            icon: 'images/internet.png',
            text: 'Language',
            press: () {},
          ),
          ProfileMenu(
            icon: 'images/settings.png',
            text: 'Settings',
            press: () {},
          ),
          ProfileMenu(
            icon: 'images/logout.png',
            text: 'Log Out',
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color(0xfff5f6f9),
          onPressed: press,
          child: Row(
            children: [
              Image.asset(icon, width: 22, color: Color(0xffD61672)),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child:
                      Text(text, style: Theme.of(context).textTheme.bodyText1)),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 4,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/profile.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
