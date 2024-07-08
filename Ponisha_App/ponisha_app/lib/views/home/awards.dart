import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Awards extends StatelessWidget {
  const Awards({super.key});

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
              alignment: Alignment.center,
              child: const Text(
                'جدیدترین مسابقات',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFECF0F3),
                    fontFamily: 'irs',
                    fontWeight: FontWeight.bold
                ),
              )
          ),

          //Awards
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.48,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.48,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: true
              ),
              items: item.map((item) =>
                  Center(
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          // width: MediaQuery.of(context).size.width * 0.45,
                          // height: MediaQuery.of(context).size.height * 0.25,
                          child: Stack(
                            children: [

                              //texts
                              AspectRatio(
                                aspectRatio:1,
                                child: Container(
                                  margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF312E81),
                                      borderRadius: BorderRadius.circular(24),
                                      boxShadow: const [BoxShadow(
                                          color: Color(0xFF100D54),
                                          blurRadius: 15
                                      )]
                                  ),
                                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.075),
                                  child: Column(
                                    children: [

                                      //title
                                      Text(
                                        "مسابقه حدس کلمه",
                                        style: TextStyle(
                                            color: const Color(0xFFECF0F3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width * 0.035
                                        ),
                                      ),

                                      //Name
                                      Text(
                                        "برگزار کننده: مهدی زمانی",
                                        style: TextStyle(
                                            color: const Color(0xFFECF0F3),
                                            fontSize: MediaQuery.of(context).size.width * 0.03
                                        ),
                                      ),

                                      Divider(
                                        color: const Color(0xFFECF0F3),
                                        indent: MediaQuery.of(context).size.width * 0.04,
                                        endIndent: MediaQuery.of(context).size.width * 0.04,
                                      ),

                                      //second title
                                      Text(
                                        "جایزه نفر اول",
                                        style: TextStyle(
                                            color: const Color(0xFFECF0F3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width * 0.035
                                        ),
                                      ),

                                      //price
                                      Text(
                                        "3.000.000 تومان",
                                        style: TextStyle(
                                            color: const Color(0xFFECF0F3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.width * 0.035
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                              // image
                              Container(
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  'assets/images/other/gift.png',
                                  width: MediaQuery.of(context).size.width * 0.345,
                                  height: MediaQuery.of(context).size.height * 0.085,
                                ),
                              ),

                            ],
                          ),
                        );
                      },
                    ),
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
                MediaQuery.of(context).size.height * 0.01,
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
                      "همه مسابقه‌ها",
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
