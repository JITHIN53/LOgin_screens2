import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screens/constants/colors.dart';
import 'package:login_screens/screens/mail_id_screen.dart';
import 'package:login_screens/screens/welcome_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Center(
                child: Image.asset(
                  'assets/images/Group 372.png',
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/gathrr.png",

                // height: 150,
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 15, right: 15, left: 15),
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
                    labelStyle: TextStyle(color: AppColors.violet1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LightGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: AppColors.violet1),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MailidScreen(),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password?    ',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Container(
                height: 70,
                width: 320,
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
                    'Login',
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
