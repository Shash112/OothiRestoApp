import 'package:flutter/material.dart';
import 'package:restorant/common/widgets/button/custom_button.dart';
import 'package:restorant/core/configs/assets/app_assets.dart';
import 'package:restorant/presentation/home/screens/home_screen.dart';

import '../../../common/utils/screen_size.dart';
import '../../../core/configs/theme/app_colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      buildPageView(
                          imagePath: AppAssets.foodLiveTracking,
                          title: "Find Food You Love",
                          subTitle: "Discover the best foods from over 1,000+ restaurants and fast delivery to your doorstep"
                      ),
                      buildPageView(
                          imagePath: AppAssets.fastDelivery,
                          title: "Fast Delivery",
                          subTitle: "Fast food delivery to your home, office wherever you are"
                      ),
                      buildPageView(
                          imagePath: AppAssets.foodLiveTracking,
                          title: "Live Tracking",
                          subTitle: "Real time tracking of your food on the app once you placed the order"
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildPageDots(
                      currentPage: _currentPage,
                      pageIndex: 0
                  ),
                  buildPageDots(
                      currentPage: _currentPage,
                      pageIndex: 1
                  ),
                  buildPageDots(
                      currentPage: _currentPage,
                      pageIndex: 2
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomButton(
                  name: _currentPage == 2 ? "Finish" : "Next",
                  onClick: (){
                    if (_currentPage == 2) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen(selectedIndex: 2,)
                          )
                      );
                    } else {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn
                      );
                    }
                  },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPageView({required String imagePath, required String title, required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: ScreenSize.height * 0.4,
          ),
          SizedBox(height: 30,),
          Text(
            title,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30,),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPageDots({required int currentPage, required int pageIndex}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentPage == pageIndex ? 20 : 10,
      decoration: BoxDecoration(
          color: currentPage == pageIndex ? AppColors.primary : Colors.black,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
