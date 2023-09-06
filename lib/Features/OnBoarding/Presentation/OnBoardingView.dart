import 'package:flutter/material.dart';
import 'package:fruitsmarket/Features/OnBoarding/Presentation/Widgets/OnBoardingBody.dart';
import 'package:fruitsmarket/core/Utiles/Image_Assets/Image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: controller,
          children: [
            OnBoardingBodyView(
              title: 'E Shopping',
              subTitle: 'Explore top organic fruits & grab them',
              showSkip: true,
              imageView: shoppingImage,
              buttonText: 'Next',
              onTap: () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
            ),
            OnBoardingBodyView(
              title: 'Delivery on the way',
              subTitle: 'Get your order by speed delivery',
              showSkip: true,
              imageView: deliveryOnWayImage,
              buttonText: 'Next',
              onTap: () {
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
            ),
            OnBoardingBodyView(
              title: 'Delivery Arrived',
              subTitle: 'Order is arrived at your Place',
              showSkip: false,
              imageView: deliveryImage,
              buttonText: 'Get Started',
              onTap: () {},
            ),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.98),
          child: SmoothPageIndicator(
            effect: const WormEffect(
                activeDotColor: Color(0xff69A03A),
                dotHeight: 10,
                dotWidth: 10,
                strokeWidth: 1,
                paintStyle: PaintingStyle.stroke,
                spacing: 13,
                dotColor: Color(0xff69A03A)),
            controller: controller,
            count: 3,
          ),
        )
      ],
    );
  }
}
