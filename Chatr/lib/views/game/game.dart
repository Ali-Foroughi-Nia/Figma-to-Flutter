import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import '../navigation/pages_topbar_2.dart';
import 'game_color.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            // resizeToAvoidBottomInset : false,
            body: DecoratedBox(
              decoration: BoxDecoration(
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

                  // Items
                  GameItems(),

                  // top bar
                  // PagesTopBar()
                  PagesTopBar2()

                ],
              ),
            ),
            drawer: DrawerPattern(),
          ),
        )
    );
  }
}

class GameItems extends StatelessWidget {
  const GameItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            // Time
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02
              ),
              child: Center(
                child: Countdown(
                  seconds: 200,
                  build: (BuildContext context, double time) =>
                      Text(
                        time.toString(),
                        style: TextStyle(
                          color: gameQuestionText,
                          fontSize: MediaQuery.of(context).size.width * 0.055
                        ),
                      ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    // print('Timer is done!');
                  },
                )
              ),
            ),

            // Question Box
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.03
                ),
                decoration: BoxDecoration(
                  color: gameQuestionBox,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: gameQuestionBoxShadow.withOpacity(0.5),
                      blurRadius: 20
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "سئوال شماره 1 (4امتیاز) :",
                      style: TextStyle(
                        color: gameQuestionText,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.04
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                    Text(
                      "سئوال absdfghk در hjhuhyu dsfsd njgfdn kjsadnsf jasnnj sdnf jknfjd ksnfkj",
                      style: TextStyle(
                          color: gameQuestionText,
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width * 0.035
                      ),
                      textAlign: TextAlign.justify,
                    )

                  ],
                ),
              ),
            ),

            // Answers
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12,
                vertical: MediaQuery.of(context).size.height * 0.02
              ),
              child: Column(
                children: [

                  //1
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                          vertical: MediaQuery.of(context).size.height * 0.015
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: gameQuestionText.withOpacity(0.6)
                          )
                      ),
                      child: Center(
                        child: Text(
                          "جواب ۱",
                          style: TextStyle(
                            color: gameQuestionText.withOpacity(0.6),
                            fontSize:  MediaQuery.of(context).size.width * 0.035
                          ),
                        ),
                      ),
                    ),
                  ),

                  //2
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                          vertical: MediaQuery.of(context).size.height * 0.015
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01
                      ),
                      decoration: BoxDecoration(
                        color: gameQuestionCorrect,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: gameQuestionText.withOpacity(0.6)
                        )
                      ),
                      child: Center(
                        child: Text(
                          "جواب ۲",
                          style: TextStyle(
                              color: gameQuestionText.withOpacity(0.6),
                              fontSize:  MediaQuery.of(context).size.width * 0.035
                          ),
                        ),
                      ),
                    ),
                  ),

                  //3
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05,
                          vertical: MediaQuery.of(context).size.height * 0.015
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: gameQuestionText.withOpacity(0.6)
                          )
                      ),
                      child: Center(
                        child: Text(
                          "جواب ۳",
                          style: TextStyle(
                              color: gameQuestionText.withOpacity(0.6),
                              fontSize:  MediaQuery.of(context).size.width * 0.035
                          ),
                        ),
                      ),
                    ),
                  ),

                  //4
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.015
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01
                      ),
                      decoration: BoxDecoration(
                        color: gameQuestionWrong,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: gameQuestionText.withOpacity(0.6)
                        )
                      ),
                      child: Center(
                        child: Text(
                          "جواب ۴",
                          style: TextStyle(
                              color: gameQuestionText.withOpacity(0.6),
                              fontSize:  MediaQuery.of(context).size.width * 0.035
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            // Buttons
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.02
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // before
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: gameQuestionButton.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(26)),
                      child: Text(
                        "سئوال قبلی",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.w700,
                          color: gameQuestionButtonText
                        ),
                      ),
                    ),
                  ),

                  // after
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: gameQuestionButton.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(26)),
                      child: Text(
                        "سئوال بعدی",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            fontWeight: FontWeight.w700,
                            color: gameQuestionButtonText
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),


        // button
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: gameQuestionButton.withOpacity(0.8)
                  ),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(26)),
                  child: Text(
                    "پایان مسابقه",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w700,
                        color: gameQuestionButton.withOpacity(0.8)
                    ),
                  ),
                ),
              ),
            )
        )

      ],
    );
  }
}

