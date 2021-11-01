import 'package:flutter/material.dart';
import 'package:amfoss_app/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/page1.png', 'Yoga Surge ',
        'Inhale the future and exhale the past'),
    OnboardingInfo('assets/page2.png', 'Healthy freak exercises',
        'Letting go is the hardest part'),
    OnboardingInfo('assets/page3.png', 'Cycling ',
        'You cannot always control what goes outside. But you can always control what goes inside '),
    OnboardingInfo('assets/page4.png', 'Meditation',
        'The longest journey of any person is the journey inward.'),
    OnboardingInfo('assets/welcome.png', 'Anshuman Swain',
        'loremhsdg jdhcijdkjf dfgrerfgb thrstghbrsdtgfbhsr hsftghtrhb thtgff fff fffffffffffffffffffffffffff fffffff ffffffff ffffffffffff ffffffffffffffff fffffffffffffffffffff ffffedghedtfg tdgjheibfjg all i want to say is that i dont give up at all at any case what ever happens to me i will not give up.dhcijdkjf dfgrerfgb thrstghbrsdtgfbhsr hsftghtrhb thtgff fff fffffffffffffffffffffffffff fffffff ffffffff ffffffffffff ffffffffffffffff fffffffffffffffffffff ffffedghedtfg tdgjheibfjg all i want to say is that i dont give up at all at any case what ever happens to me i will ndhcijdkjf dfgrerfgb thrstghbrsdtgfbhsr hsftghtrhb thtgff fff fffffffffffffffffffffffffff fffffff ffffffff ffffffffffff ffffffffffffffff fffffffffffffffffffff ffffedghedtfg tdgjheibfjg all i want to say is that i dont give up at all at any case what ever happens to me i will n')
  ];
}
