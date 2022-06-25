import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class Doyouknow extends StatelessWidget {
  const Doyouknow({
    required this.isDesktop,
    required this.isTablet,
    Key? key,
  }) : super(key: key);
  final bool isDesktop;
  final bool isTablet;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset('images/pic.png')),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Do you know ?',
                style: GoogleFonts.nunito(
                    fontSize: isDesktop ?28: isTablet ? 22.0  : 18.0,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor),
              ),
              SizedBox(
                width: 600,
                child: Text(
                  kTextSecond,
                  maxLines: 10,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: isDesktop
                          ? 25.0
                          : isTablet
                              ? 20
                              : 16),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SizedBox(
                width: 600,
                child: Text(
                  kTextThird,
                  maxLines: 10,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      fontSize: isDesktop
                          ? 25.0
                          : isTablet
                              ? 20
                              : 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({
    required this.isDesktop,
    required this.isTablet,
    Key? key,
  }) : super(key: key);
  final bool isDesktop;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'About Us',
                  style: GoogleFonts.nunito(
                      fontSize: isDesktop || isTablet ? 45.0 : 35,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor),
                ),
              ),
              Container(
                width: 700,
                padding: const EdgeInsets.symmetric(horizontal: 30.0,
                    vertical: 25.0),
                child: Text(
                  kTextFirst,
                  maxLines: 18,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w500,
                      fontSize: isDesktop
                          ? 25.0
                          : isTablet
                              ? 18.0
                              : 15.0),
                ),
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Expanded(
                child: Image.asset(
              'images/backg.png',
              height: isDesktop
                  ? 700
                  : isTablet
                      ? 500
                      : 250,
              width: isDesktop
                  ? 700
                  : isTablet
                      ? 600
                      : 250,
            ))),
      ],
    );
  }
}
