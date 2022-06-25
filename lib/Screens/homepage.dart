import 'package:flutter/material.dart';
import '../widgets/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              isDesktop || isTablet
                  ? Header(
                      isDesktop: isDesktop,
                    )
                  : const ClassHeader(),
              isDesktop
                  ? SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ))
                  : const SizedBox.shrink(),
              const SizedBox(
                height: 40,
              ),
              BgImage(
                isDesktop: isDesktop,
                isTablet: isTablet,
              ),
              const SizedBox(
                height: 100,
              ),
              AboutUs(isDesktop: isDesktop, isTablet: isTablet),
              const SizedBox(
                height: 20,
              ),
              Doyouknow(isDesktop: isDesktop, isTablet: isTablet),
              const SizedBox(
                height: 50,
              ),
              Services(
                  isMobile: isMobile, isDesktop: isDesktop, isTablet: isTablet),
              const SizedBox(
                height: 50,
              ),
              ChooseUs(isDesktop: isDesktop, isTablet: isTablet),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Meet our Team',
                style: GoogleFonts.lato(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
              isDesktop
                  ? ProfileRow1(isTablet: isTablet, isDesktop: isDesktop)
                  : isTablet
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child:ProfileRow1(isTablet: isTablet, isDesktop: isDesktop)
                        )
                      : Column(
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
                              title: 'Web-Developer',
                              name: 'Krishna Chandra Verma',
                              image: 'p3',
                              isTablet: isTablet,
                              isDesktop: isDesktop,
                            ),
                          ],
                        ),
              isDesktop
                  ? ProfileRow2(isTablet: isTablet, isDesktop: isDesktop)
                  : isTablet
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: ProfileRow2(isTablet: isTablet, isDesktop: isDesktop)
                        )
                      : Column(
                          children: [
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
                            ),
                          ],
                        ),
              const SizedBox(
                height: 150.0,
              ),
              isDesktop || isTablet
                  ? Container(
                      height: 500,
                      color: kPrimaryColor,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Row1(),
                          Row2(),
                          Row3(),
                          Row4(),
                        ],
                      ),
                    )
                  : const MobileBottom()
            ],
          ),
        ),
      ),
    );
  }
}

