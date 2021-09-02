import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screens/constants/colors.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 330, left: 20, right: 20, bottom: 200),
                child: Text(
                  "Hi Jeet,Welcome to gathrr!",
                  style: GoogleFonts.josefinSans(
                    fontSize: 50,
                    textStyle:
                        TextStyle(color: AppColors.violet1, letterSpacing: .5),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 50,right: 50),
              child: Text(
                'Please,turn on the GPS to find out better event suggestions near you',
                style: GoogleFonts.josefinSans(
                  fontSize: 25,
                  textStyle: TextStyle(color: AppColors.violet3, letterSpacing: .5),
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
                    'Turn On GPS',
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .5),
                    ),
                  ),
                ),
              ),
            ),
            //Text('Please,turn on the GPS to find out better event suggestions near you')
          ],
        ),
      ),
    );
  }
}
