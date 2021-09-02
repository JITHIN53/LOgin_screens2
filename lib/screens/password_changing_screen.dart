import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screens/constants/colors.dart';
import 'package:login_screens/screens/login_screen.dart';
import 'package:login_screens/screens/welcome_screen.dart';

class PasswordChangingScreen extends StatefulWidget {
  @override
  _PasswordChangingScreenState createState() => _PasswordChangingScreenState();
}

class _PasswordChangingScreenState extends State<PasswordChangingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 10),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Image.asset(
                      'assets/images/Ellipse 56.jpg',
                      height: 180,
                      width: 180,
                    ),
                  ),
                  ClipRRect(
                    child: Image.asset('assets/images/Group 345.jpg',
                        height: 70, width: 70),
                  ),
                ],
              ),
              // child: Image.asset('assets/images/Ellipse 56.jpg',height: 200,width: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 15, right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.violet3,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: AppColors.violet3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 15, right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: AppColors.violet3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 15, right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    labelText: 'New Password',
                    labelStyle: TextStyle(color: AppColors.violet3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 15, right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: AppColors.violet3),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  color: AppColors.violet3,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text('Already have an account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
