import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:login_screens/constants/colors.dart';
import 'package:login_screens/screens/login_screen.dart';

class MailidScreen extends StatefulWidget {
  @override
  _MailidScreenState createState() => _MailidScreenState();
}

class _MailidScreenState extends State<MailidScreen> {
  @override
  Widget build(BuildContext context) {
    // final emailField = TextField(
    //   obscureText: false,
    //   decoration: InputDecoration(
    //       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //       hintText: "Email",
    //       border:
    //           OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    // );
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.black,
              ],
            ),
          ),child: Text('hbhbj'),
        ),
      ),
    );
  }
}

//Padding(
//            padding: const EdgeInsets.only(top: 110, right: 20, left: 20),
//            child: Container(
//              color: AppColors.LightGrey,
//              child: TextField(
//                decoration: InputDecoration(
//                  prefixIcon: Icon(Icons.mail_outline),
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(16),
//                      topRight: Radius.circular(16),
//                      bottomLeft: Radius.circular(16),
//                      bottomRight: Radius.circular(16),
//                    ),),
//                  labelText: 'Email',
//                  labelStyle: TextStyle(color: AppColors.violet5),
//                ),
//              ),
//            ),
// ),
//  ]
//

// Padding(
//   padding: const EdgeInsets.only(top: 150, left: 20),
//   child: Align(
//     alignment: Alignment.topCenter,
//     child: Text(
//       'Enter your email and will send you instructions on how to reset it',
//       style: TextStyle(color: Colors.white, fontSize: 27),
//     ),
//   ),
// ),
