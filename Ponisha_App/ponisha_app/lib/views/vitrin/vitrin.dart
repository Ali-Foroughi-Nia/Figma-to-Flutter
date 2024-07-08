import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ponisha_app/views/game/game.dart';

import 'package:ponisha_app/views/search/search.dart';
import 'package:ponisha_app/views/single/single.dart';
import 'package:ponisha_app/views/tasks/tasks.dart';
import 'package:ponisha_app/views/transaction/transactions.dart';
import 'package:ponisha_app/views/vitrin/vitrin_colors.dart';

import '../account_inputs/account_inputs.dart';
import '../bank_account/bank_account.dart';
import '../chat/chat.dart';
import '../components/gradiant_border.dart';
import '../signin/signin.dart';

class Vitrin extends StatelessWidget {
  const Vitrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.03,
        left: MediaQuery.of(context).size.width * 0.03,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFF6902E7).withOpacity(0.6),
              const Color(0xFF3B0181).withOpacity(0.6),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.97,
              child: GridView(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09,
                  bottom: MediaQuery.of(context).size.height * 0.11
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
        
                  //sign
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02,
                          vertical: MediaQuery.of(context).size.height * 0.01,
                        ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                    
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                    
                        ],
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
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/signin.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Text(
                              "ثبت نام",
                              style: TextStyle(
                                color: vitrinText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Get.to(() => const AccountInputs()),
                  ),
        
                  //app
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
        
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/app.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            Text(
                              "اپلیکیشن",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => const Search());
                    },
                  ),
        
                  //text
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.8),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/text.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Text(
                              "متن/رزومه",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => const Chat());
                    },
                  ),
        
                  //video
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/video.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Text(
                              "ویدئو",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Get.to(() => const Single()),
                  ),
        
                  //gift
                  InkWell(
                    onTap: (){
                      Get.to(() => const Tasks());
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/gift.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            Text(
                              "مسابقات",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
        
                  //transaction
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/money.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            Text(
                              "تراکنش",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => const Transactions());
                    },
                  ),
        
                  //comp
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
        
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
        
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/comp.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Text(
                              "جشنواره",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => BankAccount());
                    },
                  ),
        
                  //news
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
        
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
        
                        ],
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
        
                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/news.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            Text(
                              "جدیدترین اخبار",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => const SignIn());
                    },
                  ),
        
                  //point
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),
                        ],
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

                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/trophy.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                            Text(
                              "امتیاز",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){
                      Get.to(() => const Game());
                    },
                  ),
        
                  //support
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      decoration: BoxDecoration(
                        color: vitrinBox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [

                          CustomBoxShadow(
                              color: vitrinBoxOuterShadow.withOpacity(0.5),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer
                          ),

                        ],
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

                      ),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/vitrin/support.png',
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            Text(
                              "پیگیری و مشاهدات",
                              style: TextStyle(
                                  color: vitrinText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


// Transparent Widget Outer Shadow
class CustomBoxShadow extends BoxShadow {
  @override
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) {
        result.maskFilter = null;
      }
      return true;
    }());
    return result;
  }
}


// Inner Shadow
const double _kRadius = 40;
const double _kBorderWidth = 1;

class MyPainter extends CustomPainter {
  MyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rectShadow = RRect.fromRectAndRadius(const Offset(0, 0) & size, const Radius.circular(_kRadius));

    final shadowPaint = Paint()
      ..strokeWidth = _kBorderWidth
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5);
    // final borderPaint = Paint()
    //   ..strokeWidth = _kBorderWidth
    //   ..color = Colors.white
    //   ..style = PaintingStyle.stroke;

    canvas.drawRRect(rectShadow, shadowPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
