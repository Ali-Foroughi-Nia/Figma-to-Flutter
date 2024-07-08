import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ponisha_app/views/account/account.dart';
import 'package:ponisha_app/views/navigation/drawer.dart';
import 'package:ponisha_app/views/vitrin/vitrin.dart';

import '../../controllers/navigation_controller.dart';
import '../components/background.dart';
import '../components/gradiant_border.dart';
import '../home/home.dart';
import 'home_topbar.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  Future<bool> _onWillPop(BuildContext context) async {

    bool? exitResult = await showDialog(

      context: context,

      builder: (context) => _buildExitDialog(context),

    );

    return exitResult ?? false;

  }


  Future<bool?> _showExitDialog(BuildContext context) async {

    return await showDialog(

      context: context,

      builder: (context) => _buildExitDialog(context),

    );

  }


  AlertDialog _buildExitDialog(BuildContext context) {

    return AlertDialog(

      // title: const Text('Please confirm'),
      backgroundColor: const Color(0xFF6902E7).withOpacity(0.8),

      content: Text(
        'آیا قصد خروج دارید ؟',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: const Color(0xFFECF0F3),
          fontSize: MediaQuery.of(context).size.width * 0.04
        ),
      ),

      actions: <Widget>[

        TextButton(

          onPressed: () => Navigator.of(context).pop(false),

          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.01
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF02EEFB)
            ),
            child: Text(
              'نه',
              style: TextStyle(
                  color: const Color(0xFF6902E7),
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

        ),

        TextButton(

          onPressed: () => Navigator.of(context).pop(true),

          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01,
                horizontal: MediaQuery.of(context).size.width * 0.01
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF02EEFB)
            ),
            child: Text(
              'بله',
              style: TextStyle(
                  color: const Color(0xFF6902E7),
                  fontSize: MediaQuery.of(context).size.width * 0.035
              ),
            ),
          ),

        ),

      ],

    );

  }

  @override
  Widget build(BuildContext context) {

    final NavigationController pageController =
    Get.put(NavigationController());

    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6902E7),
                    Color(0xFF3B0181),
                  ],
                ),
              ),
              child: Stack(
                children: [
      
                  const Background(),
      
                  Obx((){
                    if(pageController.tabIndex.value == 0){
                      return const Home();
                    }
                    if(pageController.tabIndex.value == 1){
                      return const Vitrin();
                    }
                    if(pageController.tabIndex.value == 2){
                      return const Account();
                    }
                    return const SizedBox.shrink();
      
                  }),
      
                  // top bar
                  const HomeTopBar(),
      
      
                  const BottomMenu(),
      
                ],
              ),
            ),
            drawer: const DrawerPattern(),
          ),
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final NavigationController pageController =
    Get.put(NavigationController());

    return Positioned(
        bottom: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.width * 0.03,
        right: MediaQuery.of(context).size.width * 0.03,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.09,
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(
              color: const Color(0xFF4642A9).withOpacity(0.6),
              border: GradientBorder(
                borderGradient: LinearGradient(
                  colors: [
                    const Color(0xFFFFFFFF).withOpacity(0.16),
                    const Color(0xFFFFFFFF).withOpacity(0.8),
                  ],
                  tileMode: TileMode.repeated,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: const [0.0, 1.0],
                  transform: const GradientRotation(0.0),
                ),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(26)
          ),
          // Buttons
          child: Obx(() {
            return Row(
              children: [

                // Shop
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.29,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    // enableFeedback: false,
                    onTap: (){
                      pageController.changeTabIndex(1);
                      pageController.homeOpacity.value = 0.0;
                    },
                    child: Column(
                      children: [

                        //icon
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.054,
                          child: SvgPicture.asset(
                            'assets/svg/shop.svg',
                            height: MediaQuery.of(context).size.height * 0.03,
                              colorFilter: pageController.tabIndex.value == 1
                                ?ColorFilter.mode(const Color(0x0000f2fe).withOpacity(0.8), BlendMode.srcIn)
                                :ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                          ),
                        ),

                        //label
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: Text(
                            "ویترین",
                            style: TextStyle(
                                color: pageController.tabIndex.value == 1
                                  ?const Color(0x0000f2fe).withOpacity(0.8)
                                  :const Color(0x00ecf0f3).withOpacity(0.8),
                                fontSize: MediaQuery.of(context).size.width * 0.033,
                            ),
                          ),
                        ),

                        //pointer
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.fastOutSlowIn,
                          width: pageController.tabIndex.value == 1
                              ?MediaQuery.of(context).size.width
                              :0,
                          height: 4,
                          decoration: BoxDecoration(
                            color: const Color(0x0000f2fe).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      //   pageController.tabIndex.value == 1
                      //     ?Container(
                      //   width: MediaQuery.of(context).size.width,
                      //   height: 5,
                      //   decoration: BoxDecoration(
                      //     color: const Color(0x0000f2fe).withOpacity(0.8),
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      // )
                      //     :const SizedBox.shrink()

                      ],
                    ),
                  ),
                ),

                // Home
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.29,
                  height: MediaQuery.of(context).size.height,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: (){
                      pageController.changeTabIndex(0);
                      pageController.homeOpacity.value = 1;
                    },
                    child: Column(
                      children: [

                        //icon
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.054,
                          child: SvgPicture.asset(
                            'assets/svg/home-2.svg',
                            colorFilter: pageController.tabIndex.value == 0
                            ?ColorFilter.mode(const Color(0x0000f2fe).withOpacity(0.8), BlendMode.srcIn)
                            :ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                          ),
                        ),

                        //label
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: Text(
                            "خانه",
                            style: TextStyle(
                                color: pageController.tabIndex.value == 0
                                  ?const Color(0x0000f2fe).withOpacity(0.8)
                                  :const Color(0x00ecf0f3).withOpacity(0.8),
                                fontSize: MediaQuery.of(context).size.width * 0.033
                            ),
                          ),
                        ),

                        //pointer
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.fastOutSlowIn,
                          width: pageController.tabIndex.value == 0
                          ?MediaQuery.of(context).size.width
                          :0,
                          height: 5,
                          decoration: BoxDecoration(
                            color: const Color(0x0000f2fe).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      //   pageController.tabIndex.value == 0
                      //     ?Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     height: 5,
                      //     decoration: BoxDecoration(
                      //       color: const Color(0x0000f2fe).withOpacity(0.8),
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      // )
                      //     :const SizedBox.shrink()

                      ],
                    ),
                  ),
                ),

                // Account
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: (){
                      pageController.changeTabIndex(2);
                      pageController.homeOpacity.value = 0.0;
                    },
                    child: Column(
                      children: [

                        //icon
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.054,
                          child: SvgPicture.asset(
                            'assets/svg/frame.svg',
                            colorFilter: pageController.tabIndex.value == 2
                                ?ColorFilter.mode(const Color(0x0000f2fe).withOpacity(0.8), BlendMode.srcIn)
                                :ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn),
                          ),
                        ),

                        //label
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: Text(
                            "حساب کاربری",
                            style: TextStyle(
                                color: pageController.tabIndex.value == 2
                                    ?const Color(0x0000f2fe).withOpacity(0.8)
                                    :const Color(0x00ecf0f3).withOpacity(0.8),
                                fontSize: MediaQuery.of(context).size.width * 0.033
                            ),
                          ),
                        ),

                        //pointer
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.fastOutSlowIn,
                          width: pageController.tabIndex.value == 2
                              ?MediaQuery.of(context).size.width
                              :0,
                          height: 5,
                          decoration: BoxDecoration(
                            color: const Color(0x0000f2fe).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        // pageController.tabIndex.value == 2
                        //   ?Container(
                        //     width: MediaQuery.of(context).size.width,
                        //     height: 5,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0x0000f2fe).withOpacity(0.8),
                        //       borderRadius: BorderRadius.circular(15),
                        //     ),
                        //   )
                        //   :const SizedBox.shrink()

                      ],
                    ),
                  ),
                ),
              ],
            );
          })

        )
    );
  }
}
