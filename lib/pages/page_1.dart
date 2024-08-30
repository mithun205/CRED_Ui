import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class Page_1 extends StatelessWidget {
  const Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(31, 98, 98, 98),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 300),
            Image.asset("assets/00.png"),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "CRED",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 5),
                Text(
                  "mint",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 23),
            Text(
              "grow your savings. \n3x faster",
              style: GoogleFonts.poppins(
                color: Colors.grey[100],
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: NeoPopButton(
                color: Colors.white,
                onTapUp: () => HapticFeedback.vibrate(),
                onTapDown: () => HapticFeedback.vibrate(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 105, vertical: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/page_2");
                    },
                    child: Text(
                      "Go to category",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
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
