import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagher/packages/pages/tour/componets/tour_card.dart';
import 'package:shagher/themes/app_colors.dart';
import 'package:shagher/util/path_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../components/button/elevated_btn.dart';
import '../../home/views/body.dart';

class TourWidget extends StatefulWidget {
  static const id = 'TourWidget';
  const TourWidget({Key? key}) : super(key: key);

  @override
  State<TourWidget> createState() => _TourWidgetState();
}

class _TourWidgetState extends State<TourWidget> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBlue,
      body: Container(
        color: AppColors.primarybg,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                //todo texts and tr()
                children: const <Widget>[
                  TourCard(
                      image: PathImages.appLogo,
                      title: 'Header One',
                      subtitle:
                          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. '),
                  TourCard(
                      image: PathImages.appLogo,
                      title: 'Header Two',
                      subtitle:
                          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. '),
                  TourCard(
                      image: PathImages.appLogo,
                      title: 'Header Three',
                      subtitle:
                          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua. '),
                ],
              ),
            ),
            //todo fix this code structure
            SizedBox(
              height: 30.h,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SwapEffect(
                //offset: 8.0,
                dotWidth: 12.w,
                dotHeight: 12.h,
                activeDotColor: AppColors.black,
                dotColor: AppColors.grey,
              ),
            ),
            //todo change to spacer
            SizedBox(
              height: 20.h,
            ),
            ElevatedBtn(
              title: 'Get started',
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeWidget.id);
              },
              width: 300,
            ),
            SizedBox(
              height: 40.h,
            )
          ],
        ),
      ),
    );
  }
}
