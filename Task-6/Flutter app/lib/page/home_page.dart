import 'package:flutter/material.dart';
import 'package:onboarding_screen_example/main.dart';
import 'package:onboarding_screen_example/page/onboarding_page.dart';
import 'package:onboarding_screen_example/widget/button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/welcome.png'), 
              Text(
                'Anshuman Swain',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                
              ),
              Text(
                'Hey Guys, My Name is Anshuman, currently living in Kochi, Kerala.I love listening Music, watching movies, going for jogging and enjoy coding and doing computer stuff. I like meeting and talking to many people(offline), Hope to see you soon :)',
              

                textAlign: TextAlign.center,
               //softWrap: true,
               style: TextStyle(
               color: Colors.blueGrey[900],
               fontSize: 20,
                // PageDecoration getPageDecoration() => PageDecoration(descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0)),
               )
              ),
              //Text('df'),
            ],
          ),
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
