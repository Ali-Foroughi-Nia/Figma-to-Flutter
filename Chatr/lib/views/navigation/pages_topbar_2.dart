import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class PagesTopBar2 extends StatelessWidget {
  const PagesTopBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.09,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1
          ),
          decoration: const BoxDecoration(
              color: Color(0xFF312E81),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(46),
                  bottomLeft: Radius.circular(46)
              )
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Drawer Button
              Builder(builder: (context) {
                return InkWell(
                  child: SvgPicture.asset(
                    'assets/svg/menu.svg',
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  onTap: (){
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),


              // Icon
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.13,
                child: Image.asset('assets/images/logo.png'),
              ),

              // back
              InkWell(
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: const Color(0xFFECF0F3),
                  size: MediaQuery.of(context).size.width * 0.05,
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
