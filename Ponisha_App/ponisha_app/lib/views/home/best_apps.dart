import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/gradiant_border.dart';

class BestApps extends StatelessWidget {
  const BestApps({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> icons = [
      'assets/images/other/instagram.svg',
      'assets/images/other/telegram.svg',
      'assets/images/other/twitter.svg',
      'assets/images/other/pinterest.svg',
      'assets/images/other/youtube.svg',
      'assets/images/other/facebook.svg',
      'assets/images/other/linkedin.svg',
      'assets/images/other/whatsapp.svg',
    ];

    final List<String> names = [
      'اینستاگرام',
      'تلگرام',
      'توییتر',
      'پینترست',
      'یوتیوب',
      'فیسبوک',
      'لینکدین',
      'واتس آپ',
    ];

    final List<String> item = [
      '1',
      '2',
    ];

    return Column(
      children: [

        //title
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.width * 0.03
          ),
          alignment: Alignment.bottomRight,
          child: Text(
            'نرم افزار برتر',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              color: const Color(0xFFECF0F3),
              fontWeight: FontWeight.bold
            ),
          )
        ),

        //apps
        Container(
          height: MediaQuery.of(context).size.height * 0.24,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Color(0xFF312E81),
              boxShadow: [BoxShadow(
                color: Color(0xFF100D54),
                blurRadius: 15,
              )]
          ),
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: true
            ),
            items: item.map((item) =>
                Center(
                    child: GridView.builder(
                      itemCount: icons.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                          child: Column(
                            children: [

                              //icons
                              SizedBox(
                                height: MediaQuery.of(context).size.width * 0.15,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            const Color(0xFF4FACFE).withOpacity(0.16),
                                            const Color(0xFF00F2FE).withOpacity(0.8),
                                          ],
                                          begin: const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(1.0, 0.0),
                                          stops: const [0.0, 1.0],
                                          tileMode: TileMode.clamp),
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
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: MaterialButton(
                                      onPressed: (){},
                                      child: Center(
                                        child: SvgPicture.asset(
                                          icons[index],
                                          height: MediaQuery.of(context).size.width * 0.06,
                                          color: const Color(0xFF312E81),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ),

                              SizedBox(height: MediaQuery.of(context).size.width * 0.015,),

                              //text
                              Text(
                                names[index],
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                    color: const Color(0xFF00F2FE).withOpacity(0.8),
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
                )
            ).toList(),
          ),
        ),

        // Next
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.04,
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.02,
              MediaQuery.of(context).size.height * 0.02,
              0,
              0
          ),
          alignment: Alignment.bottomLeft,
          child: MaterialButton(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  // text
                  Text(
                    "همه نرم‌افزارها",
                    style: TextStyle(
                        color: const Color(0xFFECF0F3),
                        fontSize: MediaQuery.of(context).size.width * 0.034,
                        fontFamily: 'irs'
                    ),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),

                  // icon
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.005),
                    child: Icon(
                      Icons.navigate_next,
                      color: const Color(0xFFECF0F3),
                      size: MediaQuery.of(context).size.width * 0.04,
                    ),
                  )

                ],
              ),
            ),
            onPressed: (){},
          ),
        ),

      ],
    );
  }
}
