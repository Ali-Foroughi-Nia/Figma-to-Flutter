import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/gradiant_border.dart';


class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> item = [
      '1',
      '2',
    ];

    return SizedBox(
      child: Column(
        children: [

          // title
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.width * 0.03
              ),
              alignment: Alignment.bottomRight,
              child: Text(
                'اخبار ما',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: const Color(0xFFECF0F3),
                    fontWeight: FontWeight.bold
                ),
              )
          ),

          //news
          SizedBox(
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.58,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: true
              ),
              items: item.map((item) =>
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.58,
                    child: Column(
                      children: [

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.17,
                          margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01,
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01
                          ),
                          decoration: BoxDecoration(
                              color: const Color(0xFF312E81),
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [BoxShadow(
                                  color: Color(0xFF100D54),
                                  blurRadius: 10
                              )]
                          ),
                          child: Row(
                            children: [

                              //image
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.015),
                                    decoration: BoxDecoration(
                                        border: GradientBorder(
                                          borderGradient: LinearGradient(
                                            colors: [
                                              const Color(0xFFFFFFFF).withOpacity(0.16),
                                              const Color(0xFFFFFFFF).withOpacity(0.8),
                                            ],
                                            tileMode: TileMode.repeated,
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: const [0.0, 1.0],
                                            transform: const GradientRotation(0.0),
                                          ),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/other/news.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                              ),

                              //Details
                              Column(
                                children: [

                                  // Title
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.09,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.02,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "برگزاری و شرکت نمایشگاه کتاب تهران",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.034,
                                          color: const Color(0xFFECF0F3),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'irs'
                                      ),
                                    ),
                                  ),

                                  // Date
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "1403/03/20",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.03,
                                          color: const Color(0xFFECF0F3),
                                      ),
                                    ),
                                  ),

                                  // next
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.05,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: InkWell(
                                      child: Text(
                                        "ادامه مطلب",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.034,
                                            color: const Color(0xFFECF0F3),
                                        ),
                                      ),
                                      onTap: (){},
                                    ),
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.17,
                          margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01,
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01
                          ),
                          decoration: BoxDecoration(
                              color: const Color(0xFF312E81),
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [BoxShadow(
                                  color: Color(0xFF100D54),
                                  blurRadius: 10
                              )]
                          ),
                          child: Row(
                            children: [

                              //image
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.015),
                                    decoration: BoxDecoration(
                                        border: GradientBorder(
                                          borderGradient: LinearGradient(
                                            colors: [
                                              const Color(0xFFFFFFFF).withOpacity(0.16),
                                              const Color(0xFFFFFFFF).withOpacity(0.8),
                                            ],
                                            tileMode: TileMode.repeated,
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: const [0.0, 1.0],
                                            transform: const GradientRotation(0.0),
                                          ),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/other/news.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                              ),

                              //Details
                              Column(
                                children: [

                                  // Title
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.09,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.02,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "برگزاری و شرکت نمایشگاه کتاب تهران",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.034,
                                          color: const Color(0xFFECF0F3),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'irs'
                                      ),
                                    ),
                                  ),

                                  // Date
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "1403/03/20",
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03,
                                        color: const Color(0xFFECF0F3),
                                      ),
                                    ),
                                  ),

                                  // next
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.05,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: InkWell(
                                      child: Text(
                                        "ادامه مطلب",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.034,
                                          color: const Color(0xFFECF0F3),
                                        ),
                                      ),
                                      onTap: (){},
                                    ),
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.17,
                          margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01,
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.01
                          ),
                          decoration: BoxDecoration(
                              color: const Color(0xFF312E81),
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [BoxShadow(
                                  color: Color(0xFF100D54),
                                  blurRadius: 10
                              )]
                          ),
                          child: Row(
                            children: [

                              //image
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.015),
                                    decoration: BoxDecoration(
                                        border: GradientBorder(
                                          borderGradient: LinearGradient(
                                            colors: [
                                              const Color(0xFFFFFFFF).withOpacity(0.16),
                                              const Color(0xFFFFFFFF).withOpacity(0.8),
                                            ],
                                            tileMode: TileMode.repeated,
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: const [0.0, 1.0],
                                            transform: const GradientRotation(0.0),
                                          ),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                        image: const DecorationImage(
                                            image: AssetImage("assets/images/other/news.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                              ),

                              //Details
                              Column(
                                children: [

                                  // Title
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.09,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.02,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "برگزاری و شرکت نمایشگاه کتاب تهران",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.034,
                                          color: const Color(0xFFECF0F3),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'irs'
                                      ),
                                    ),
                                  ),

                                  // Date
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.01,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: Text(
                                      "1403/03/20",
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.width * 0.03,
                                        color: const Color(0xFFECF0F3),
                                      ),
                                    ),
                                  ),

                                  // next
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width * 0.05,
                                        MediaQuery.of(context).size.height * 0.01,
                                        MediaQuery.of(context).size.width * 0.02,
                                        MediaQuery.of(context).size.height * 0.01
                                    ),
                                    child: InkWell(
                                      child: Text(
                                        "ادامه مطلب",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.034,
                                          color: const Color(0xFFECF0F3),
                                        ),
                                      ),
                                      onTap: (){},
                                    ),
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
              ).toList(),
            ),
          ),

          // Next
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.04,
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.02,
                MediaQuery.of(context).size.height * 0.0,
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
                      "همه خبرها",
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
      ),
    );
  }
}
