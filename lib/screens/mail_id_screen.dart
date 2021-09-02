import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screens/constants/colors.dart';
import 'package:login_screens/screens/login_screen.dart';
import 'package:login_screens/screens/password_changing_screen.dart';

class MailidScreen extends StatefulWidget {
  @override
  _MailidScreenState createState() => _MailidScreenState();
}

class _MailidScreenState extends State<MailidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '      Forgot Password',
          style: GoogleFonts.josefinSans(
            fontSize: 30,
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          ),
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: Container(
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
              child: Container(
                child: Text(
                  'Enter your email and will send you instructions on how to reset it',
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    textStyle:
                        TextStyle(color: Colors.white, letterSpacing: .5),
                  ),
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.only(top: 80,left: 25,right: 25,),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grey1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline_outlined,color: Colors.white,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ), Padding(
              padding: EdgeInsets.only(top: 200),
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PasswordChangingScreen(),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: GoogleFonts.josefinSans(
                        fontSize: 25,
                        textStyle:
                        TextStyle(color: AppColors.violet1, letterSpacing: .5),
                      ),
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
