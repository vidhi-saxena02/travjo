import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travjo/utils/constants.dart';

class ClassHeader extends StatelessWidget {
  const ClassHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('images/logo.png'),
        HeaderButton(),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.isDesktop,
    Key? key,
  }) : super(key: key);
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/logo.png'),
        const SizedBox(
          width: 50.0,
        ),
        Row(
          children: [
             Icon(
              Icons.search,
              size: isDesktop ? 22.0 : 15.0,
              color: kBasicColor,
            ),
            Text(
              'Search',
              style: GoogleFonts.nunito(
                  fontSize: isDesktop ? 22.0 : 15.0,
                  fontWeight: FontWeight.w500,
                  color: kBasicColor),
            ),
          ],
        ),
        Text(
          'Home',
          style: GoogleFonts.nunito(
              fontSize: isDesktop ? 22.0 : 15.0, fontWeight: FontWeight.w500, color: kBasicColor),
        ),
        Text(
          'About Us',
          style: GoogleFonts.nunito(
              fontSize: isDesktop ? 22.0 : 15.0,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor),
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'Treasure Hunt',
              style: GoogleFonts.nunito(
                  fontSize: isDesktop ? 22.0 : 15.0,
                  fontWeight: FontWeight.w500,
                  color: kBasicColor),
            ),
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(2, -14),
                child: const Text(
                  'New',
                  textScaleFactor: 0.7,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ]),
        ),
        Text(
          'Home',
          style: GoogleFonts.nunito(
              fontSize: isDesktop ? 22.0 : 15.0, fontWeight: FontWeight.w500, color: kBasicColor),
        ),
        HeaderButton(),
      ],
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              'Login',
              style: GoogleFonts.nunito(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor),
            ),
          ),
          style: TextButton.styleFrom(
              side: const BorderSide(color: kPrimaryColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0))),
        ),
        const SizedBox(
          width: 12.0,
        ),
        const SizedBox(
            height: 40,
            child: VerticalDivider(thickness: 2, color: kBasicColor)),
        const SizedBox(
          width: 12.0,
        ),
        TextButton(
          onPressed: () {},
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text(
              'Sign Up',
              style: GoogleFonts.nunito(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0))),
        ),
      ],
    );
  }
}
