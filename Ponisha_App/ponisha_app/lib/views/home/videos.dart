import 'package:flutter/material.dart';

import '../components/gradiant_border.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> film = [
      'assets/images/other/film1.png',
      'assets/images/other/film2.jpg',
      'assets/images/other/film1.png',
      'assets/images/other/film2.jpg',
    ];

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      child: Column(
        children: [

          // Title
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            padding: EdgeInsets.fromLTRB(
              0,
              MediaQuery.of(context).size.height * 0.01,
              MediaQuery.of(context).size.width * 0.03,
              0
            ),
            child: Text(
              "ویدئو",
              style: TextStyle(
                color: const Color(0xFFECF0F3),
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: 'irs'
              ),
            ),
          ),

          // Items
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: film.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.0175,
                    left: MediaQuery.of(context).size.width * 0.0175,
                  ),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: InkWell(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
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
                          boxShadow: const [BoxShadow(
                              color: Color(0xFF100D54),
                              blurRadius: 5
                          )],
                          image: DecorationImage(
                            image: AssetImage(film[index]),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Center(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                              decoration: BoxDecoration(
                                color: const Color(0xFFECF0F3).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.play_arrow),
                                color: const Color(0xFFECF0F3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                      },
                    ),
                  ),
                );
              },
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
                      "همه ویدئوها",
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
      )
    );
  }
}
