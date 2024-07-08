import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PagesTopBar extends StatelessWidget {
  const PagesTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.015,
      left: MediaQuery.of(context).size.width * 0.03,
      right: MediaQuery.of(context).size.width * 0.03,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.07,
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Drawer Button
              Builder(builder: (context) {
                return InkWell(
                  child: SvgPicture.asset(
                    'assets/svg/Group 1.svg',
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),


              // Icon
              SizedBox(
                child: Image.asset('assets/images/logo.png'),
              ),

              // back
              InkWell(
                child: SvgPicture.asset(
                  'assets/svg/back.svg',
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                onTap: (){
                  Get.back();
                },
              ),

            ],
          )
      ),
    );
  }
}
