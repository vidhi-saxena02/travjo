import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.isMobile,
    required this.isDesktop,
    required this.isTablet,
  }) : super(key: key);

  final bool isMobile;
  final bool isDesktop;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: const Color(0xFFFFF0F2),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isMobile
              ? Text('Our Services',
              style: GoogleFonts.nunito(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor))
              : SizedBox.shrink(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isDesktop || isTablet
                        ? Text('Our Services',
                        style: GoogleFonts.nunito(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor))
                        : SizedBox.shrink(),
                    const SizedBox(
                      height: 20,
                    ),
                    isDesktop || isTablet
                        ? SizedBox(
                      width: 400,
                      child: Text(
                        kTextFourth,
                        maxLines: 8,
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: isDesktop ? 25.0 : 20.0),
                      ),
                    )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    image: 'pic4',
                    text: 'Best verified, most'
                        ' popular & local'
                        ' restaurants,',
                    isTablet: isTablet,
                    isDesktop: isDesktop,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    text: 'Authenticated & '
                        'proximity-based vendors',
                    image: 'pic3',
                    isTablet: isTablet,
                    isDesktop: isDesktop,
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Card(
                    text: 'Checked tourist services'
                        'for medical & safety',
                    image: 'pic1',
                    isTablet: isTablet,
                    isDesktop: isDesktop,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    text: 'Hassle-free payment'
                        'option to these safe'
                        'vetted vendors &'
                        'merchants using Travjo.',
                    image: 'pic2',
                    isTablet: isTablet,
                    isDesktop: isDesktop,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String image;
  final bool isDesktop;
  final bool isTablet;
  const Card({
    required this.isDesktop,
    required this.isTablet,
    required this.text,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isDesktop || isTablet ? 250 : 200,
      height: isDesktop || isTablet ? 220 : 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              child: Image.asset('images/$image.png', fit: BoxFit.cover),
              width: isDesktop || isTablet ? 150 : 120,
              height: isDesktop || isTablet ? 150 : 120),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                text,
                style: GoogleFonts.nunito(
                    fontSize: isDesktop || isTablet ? 15 : 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
