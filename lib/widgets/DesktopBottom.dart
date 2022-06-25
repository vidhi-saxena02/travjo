import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class Row4 extends StatelessWidget {
  const Row4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Underline(
          text: 'Contact Us',
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360)),
              child: Icon(
                Icons.phone_outlined,
                color: kPrimaryColor,
                size: 25,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              '+91 9170717780',
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360)),
              child: Icon(
                Icons.email_outlined,
                color: kPrimaryColor,
                size: 25,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'contact@travjo.com',
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}


class Row3 extends StatelessWidget {
  const Row3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Underline(
          text: 'Services',
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Trips',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Cabs',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Guides',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Stores',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Restaurants',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Guides',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Underline(
          text: 'Company',
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Home',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'About Us',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}

class Underline extends StatelessWidget {
  final String text;
  const Underline({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 3,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 1.0, // Underline thickness
              ))),
      child: Text(text,
          style: GoogleFonts.lato(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              color: Colors.white)),
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('images/logo2.png'),
          const SizedBox(
            height: 40,
          ),
          SocialMediaIcon(),
          const SizedBox(
            height: 20,
          ),
          kText,
          const SizedBox(
            height: 20,
          ),
          GetButtons(),
        ],
      ),
    );
  }
}

class GetButtons extends StatelessWidget {
  const GetButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              children: [
                Icon(
                  Icons.play_circle,
                  color: Colors.white,
                  size: 25,
                ),
                Column(
                  children: [
                    Text(
                      'GET IT ON',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                    Text(
                      'GOOGLEPLAY',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 10.0),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              children: [
                Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 25,
                ),
                Column(
                  children: [
                    Text(
                      'Available on the',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0),
                    ),
                    Text(
                      'Apple Store',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset('images/twitter.png'),
            backgroundColor: Colors.white,
            radius: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            child: Image.asset('images/facebook.png'),
            backgroundColor: Colors.white,
            radius: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            child: Image.asset('images/twitter.png'),
            backgroundColor: Colors.white,
            radius: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          CircleAvatar(
            child: Image.asset('images/facebook.png'),
            backgroundColor: Colors.white,
            radius: 25,
          ),
        ],
      ),
    );
  }
}