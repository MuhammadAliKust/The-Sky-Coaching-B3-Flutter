import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'models/onboarding.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/ob1.png', title: 'Trending News'),
    OnBoardingModel(
        image: 'assets/images/ob2.png', title: 'React, Save & Share News'),
    OnBoardingModel(
        image: 'assets/images/ob3.png',
        title: 'Videos & Live News From YouTube'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("On Boarding"),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: controller,
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Image.asset(onBoardingList[i].image.toString()),
                        Text(
                          onBoardingList[i].title.toString(),
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    );
                  }),
            ),
            SmoothPageIndicator(
                controller: controller, // PageController
                count: onBoardingList.length,
                effect: const ExpandingDotsEffect(
                  dotWidth: 6,
                  dotHeight: 6,
                  spacing: 6
                ), // your preferred effect
                onDotClicked: (index) {}),
            SizedBox(
              height: 30,
            )
          ],
        ));
  }
}
