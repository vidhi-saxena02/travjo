import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    required this.title,
    required this.name,
    required this.image,
    required this.isDesktop,
    required this.isTablet,
    Key? key,
  }) : super(key: key);
  final bool isDesktop;
  final bool isTablet;
  final String name;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          Image.asset('images/$image.png'),
          Text(
            name,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: isDesktop || isTablet ? 30.0 : 25),
          ),
          Text(
            title,
            style:
            GoogleFonts.lato(fontSize: isDesktop || isTablet ? 20.0 : 15),
          ),
        ],
      ),
    );
  }
}

class ProfileRow2 extends StatelessWidget {
  const ProfileRow2({
    Key? key,
    required this.isTablet,
    required this.isDesktop,
  }) : super(key: key);

  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ProfileCard(
        title: 'Application Developer',
        name: 'Akhil Pratap Singh',
        image: 'p4',
        isTablet: isTablet,
        isDesktop: isDesktop,
      ),
      ProfileCard(
        title: 'Application Developer',
        name: 'Saurabh Kumar Kanaujia',
        image: 'p5',
        isTablet: isTablet,
        isDesktop: isDesktop,
      ),
      ProfileCard(
        title: 'Advisor',
        name: 'Karishma Singh',
        image: 'p6',
        isTablet: isTablet,
        isDesktop: isDesktop,
      )
    ]);
  }
}

class ProfileRow1 extends StatelessWidget {
  const ProfileRow1({
    Key? key,
    required this.isTablet,
    required this.isDesktop,
  }) : super(key: key);

  final bool isTablet;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileCard(
          title: 'Founder',
          name: 'Marut Tripathi',
          image: 'founder',
          isTablet: isTablet,
          isDesktop: isDesktop,
        ),
        ProfileCard(
          title: 'Co-Founder',
          name: 'Aastha Singh',
          image: 'p2',
          isTablet: isTablet,
          isDesktop: isDesktop,
        ),
        ProfileCard(
          title: 'Web-developer',
          name: 'Krishna Chandra Verma',
          image: 'p3',
          isTablet: isTablet,
          isDesktop: isDesktop,
        ),
      ],
    );
  }
}
