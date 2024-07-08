import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerPattern extends StatelessWidget {
  const DrawerPattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF312E81).withOpacity(0.6),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Stack(
          children: [

            Column(
              children: [

                //close button
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/drawer/drawer_close.svg',
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                ),

                //profile image
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.12,
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015
                  ),
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF00F2FE)
                            ),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/drawer/profile.jpg',
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                ),

                //name
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //title
                        Text(
                          'نام و نام خانودگی:',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        ),

                        //name
                        Text(
                          'مهدی زمانی',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //wallet
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //title
                        Text(
                          'صندوق:',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        ),

                        //name
                        Text(
                          '12.000.000 تومان',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //income box
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //title
                        Text(
                          'صندوق درآمد:',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        ),

                        //name
                        Text(
                          '2.000.000 تومان',
                          style: TextStyle(
                              color: const Color(0xFF00F2FE).withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.035
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Plus Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/plus.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "متن نمونه",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Account Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/account.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "حساب کاربری",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Financial Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/dollar.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "تراکنش های مالی",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Game Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/gift.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "مسابقات",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Points Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/award.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "امتیازها",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Help Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/help.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "راهنما",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

                //Contact Button
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF00F2FE).withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xFF00F2FE).withOpacity(0.8)
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: MaterialButton(
                    onPressed: (){},

                    child: Row(
                      children: [

                        //logo
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/drawer/message.svg',
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: const Color(0xFF312E81),
                            ),
                          ),
                        ),

                        //Text
                        Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.009),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Center(
                            child: Text(
                              "ارتباط با ما",
                              style: TextStyle(
                                color: const Color(0xFF312E81),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),

              ],
            ),

            //logo
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.75,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset('assets/images/logo.png'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
