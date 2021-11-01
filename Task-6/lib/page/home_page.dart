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
                'hello how are youncjhdnwkjh asjdhcsndfkjh qjdfhcofebfkjhw kjhclndkfhgdc bhiud ihbdf hi dfihbwrkhfbh knsdf, iuhdsuhs sdkjcsdkjvbi sdhbvkd vihbdklbfviuwbkiwu9 ekjbfuowe fknwfwmdnvjwdfckhfwef kwhigfj hhjdfgn iufbjb ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
