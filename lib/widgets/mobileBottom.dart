import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travjo/utils/constants.dart';

import 'DesktopBottom.dart';

class MobileBottom extends StatelessWidget {
  const MobileBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: kPrimaryColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'images/logo2.png',
                width: 150,
                height: 150,
              ),
              Column(
                children: [
                  SocialMediaIcon(),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Discover our App',
                    style: GoogleFonts.lato(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  GetButtons()
                ],
              ),
            ],
          ),
          Divide(),
          Row2(),
          Divide(),
          Row3(),
          Divide(),
          Row4(),
          const SizedBox(height: 12.0,),
        ],
      ),
    );
  }
}

class Divide extends StatelessWidget {
  const Divide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Divider(
        thickness: 2,
        color: Colors.grey.withOpacity(0.3),
      ),);
  }
}