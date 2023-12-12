import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noraimenu/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            //shop name
            Text("NORAI RESTURANT",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 25,
            ),
            //icon
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Image.asset('lib/images/norai_logo.jpg'),
            ),

            const SizedBox(height: 25),

            //title
            Text(
              "THE TASTE OF ASIAN FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 5),

            //subtitle
            Text(
              "feel the taste of our FOUR unique cuisines anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            //get started button

            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
