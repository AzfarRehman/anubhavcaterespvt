import 'package:flutter/material.dart';
import 'package:anubhavcaterespvt/theme/app_colors.dart';
import 'package:anubhavcaterespvt/config/size_config.dart';
import 'package:anubhavcaterespvt/screens/home_page.dart';
import 'package:anubhavcaterespvt/theme/style.dart';
import 'package:flutter_svg/svg.dart';

// Stateful widget created
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
// index given for tabs
  int currentIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

// Number of tabs
  final tabs = [
    const HomePage(),
    const Center(child: PrimaryText(text: 'Store Near By', size: 40, color: AppColors.primary)),
    const Center(child: PrimaryText(text: 'Profile Page', size: 40, color: AppColors.primary)),
    const Center(child: PrimaryText(text: 'Cart detail Page', size: 40, color: AppColors.primary)),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: currentIndex,
        children: tabs,
      ),

      // bottom app bar
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // button 1
              GestureDetector(
                onTap: () {
                  setBottomBarIndex(0);
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                    decoration: BoxDecoration(
                        color: currentIndex == 0 ? AppColors.black : AppColors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: currentIndex == 0 ? Border.all(color: Colors.amberAccent) : Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/home.svg',
                          width: 20,
                          color: currentIndex == 0 ? AppColors.primary : Colors.grey,
                        ),
                        currentIndex == 0 ? const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: PrimaryText(text: 'Home', size: 16, color: AppColors.primary, fontWeight: FontWeight.w700),
                        ) : const SizedBox()
                      ],
                    )),
              ),

              // button 2
              GestureDetector(
                onTap: () {
                  setBottomBarIndex(1);
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                    decoration: BoxDecoration(
                        color: currentIndex == 1 ? AppColors.black : AppColors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: currentIndex == 1 ? Border.all(color: Colors.amberAccent) : Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/location.svg',
                          width: 20,
                          color: currentIndex == 1 ? AppColors.primary : Colors.grey,
                        ),
                        currentIndex == 1 ? const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: PrimaryText(text: 'Near by', size: 16, color: AppColors.primary, fontWeight: FontWeight.w700),
                        ) : const SizedBox()
                      ],
                    )),
              ),
              // button 3
              GestureDetector(
                onTap: () {
                  setBottomBarIndex(2);
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                    decoration: BoxDecoration(
                        color: currentIndex == 2 ? AppColors.black : AppColors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: currentIndex == 2 ? Border.all(color: Colors.amberAccent) : Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/user.svg',
                          width: 20,
                          color: currentIndex == 2 ? AppColors.primary : Colors.grey,
                        ),
                        currentIndex == 2 ? const Padding(
                          padding:  EdgeInsets.only(left: 10),
                          child: PrimaryText(text: 'Profile', size: 16, color: AppColors.primary, fontWeight: FontWeight.w700),
                        ) : const SizedBox()
                      ],
                    )),
              ),

              // button 4
              GestureDetector(
                onTap: () {
                  setBottomBarIndex(3);
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                    decoration: BoxDecoration(
                        color: currentIndex == 3 ? AppColors.black : AppColors.black,
                        borderRadius: BorderRadius.circular(20),
                        border: currentIndex == 3 ? Border.all(color: Colors.amberAccent) : Border.all(color: Colors.black)
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/cart.svg',
                          width: 20,
                          color: currentIndex == 3 ? AppColors.primary : Colors.grey,
                        ),
                        currentIndex == 3 ? const Padding(
                          padding:  EdgeInsets.only(left: 10),
                          child: PrimaryText(text: 'Cart', size: 16, color: AppColors.primary, fontWeight: FontWeight.w700),
                        ) : const SizedBox()
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}