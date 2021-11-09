import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_example/page/home_page.dart';
import 'package:onboarding_screen_example/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'YOGA SURGE',
              body: 'Welcome to the yoga world.',
              image: buildImage('assets/page1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Healthy Freaks Exercises',
              body: 'Letting go is the hardest asana.',
              image: buildImage('assets/page2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Cycling',
              body: 'You cannot always control what goes on outside. But you can always control what goes on inside',
              image: buildImage('assets/page3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Meditation',
              body: 'The longest journey for any person is the journey inward.',
              image: buildImage('assets/page4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.blueGrey,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.brown[50],
      );
}
