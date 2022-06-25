import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class BgImage extends StatelessWidget {
  const BgImage({
    Key? key,
    required this.isDesktop,
    required this.isTablet,
  }) : super(key: key);

  final bool isDesktop;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: isDesktop
                ? 700
                : isTablet
                ? 500
                : 300,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/backg.png',
              fit: BoxFit.cover,
            )),
        Positioned(
            top: isDesktop ? 150 : 50,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Why to fear...When Travjo is here...',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: isDesktop ? 45.0 : 18.0),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    kTextHeader1,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: isDesktop
                            ? 25.0
                            : isTablet
                            ? 22
                            : 12.0),
                  ),
                  Text(
                    kTextHeader2,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: isDesktop
                            ? 25.0
                            : isTablet
                            ? 22
                            : 12.0),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width / 2.2,
              height: isDesktop
                  ? 350
                  : isTablet
                  ? 300
                  : 200,
              color: kBasicColor,
            )),
      ],
    );
  }
}