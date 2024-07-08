import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> imgList = [
      'assets/images/other/banner.jpg',
      'assets/images/other/banner.jpg',
    ];

    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.09
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.4,
                viewportFraction: 0.95,
                enlargeCenterPage: true,
                autoPlay: true
              ),
              items: imgList.map((item) =>
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                      )
                  )
              ).toList(),
            ),
          ),
        ),

      ],
    );
  }
}
