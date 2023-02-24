import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherapp/constants/Colors.dart';
import 'homeview.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  login_Screen() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
        (Route<dynamic> route) => false);
  }

  List onboardingData = [
    {
      'image': 'assets/images/new york.png',
      'title': 'NEW YORK',
    },
    {
      'image': 'assets/images/san fan.png',
      'title': 'SAN FRANCISCO',
    },
    {
      'image': 'assets/images/new york.png',
      'title': 'NEW YORK',

    },
  ];

  PageController pageController = PageController();
  int currentPage = 0;
  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: App_Colors.app_white_color,
        actions: [
          TextButton(
            onPressed: login_Screen,
            child: Text(
              "Skip",
              style: TextStyle(
                fontFamily: 'Philosopher',
                letterSpacing: 3,
                fontSize: 18,
                color: App_Colors.app_black_color,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: onChanged,
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image(image: AssetImage(onboardingData[index]['image'])),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        onboardingData[index]['title'],
                        style: TextStyle(
                          fontFamily: 'Philosopher',
                          letterSpacing: 3,
                          wordSpacing: 3,
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: App_Colors.app_black_color,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                  ],
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (currentPage == (onboardingData.length - 1))
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeView(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: App_Colors.app_green_color,
                              ),
                              child: Center(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: App_Colors.app_white_color),
                              )),
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(onboardingData.length,
                              (index) {
                            return AnimatedContainer(
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              height: 10,
                              width: (index == currentPage) ? 20 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (index == currentPage)
                                    ? Colors.deepOrange
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ),
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
