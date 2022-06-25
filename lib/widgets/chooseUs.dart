import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class ChooseUs extends StatelessWidget {
  const ChooseUs({
    Key? key,
    required this.isDesktop,
    required this.isTablet,
  }) : super(key: key);

  final bool isDesktop;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Why Choose us?',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                        color: kBasicColor)),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  width: 515,
                  child: Text(
                    'A unified platform for worry-free travel,'
                        'without scammers, safety concerns, & '
                        'other hiccups throughout India.',
                    maxLines: 3,
                    style: GoogleFonts.lato(
                        fontSize: 25.0, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Tile(
                  text: 'HASSEL-FREE PAYMENT '
                      'OPTION',
                  iconData: Icons.money,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Tile(
                  text: 'EMERGENCY SERVICES',
                  iconData: Icons.privacy_tip,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Tile(
                  text: 'PROXIMITY-BASED '
                      'SUGGESTION',
                  iconData: Icons.location_on_outlined,
                ),
              ],
            ),
          ),
        ),
        isDesktop
            ? Expanded(child: Image.asset('images/travel.png'))
            : isTablet
            ? Container(
            width: 350,
            height: 350,
            child: Image.asset(
              'images/travel.png',
              fit: BoxFit.cover,
            ))
            : SizedBox.shrink()
      ],
    );
  }
}

class Tile extends StatelessWidget {
  final IconData iconData;
  final String text;
  const Tile({
    required this.iconData,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Icon(
            iconData,
            size: 35.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Text(
          text,
          style: GoogleFonts.lato(fontWeight: FontWeight.w600, fontSize: 20.0),
        )
      ],
    );
  }
}