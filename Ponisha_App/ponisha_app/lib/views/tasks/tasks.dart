import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import  'package:persian_datetime_picker/persian_datetime_picker.dart';

import 'package:ponisha_app/views/tasks/task_colors.dart';
import '../components/background.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import '../search/search_colors.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            resizeToAvoidBottomInset : false,
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

                  Background(),

                  // Items
                  TasksItems(),

                  // top bar
                  PagesTopBar()

                ],
              ),
            ),
            drawer: DrawerPattern(),
          ),
        )
    );
  }
}

class TasksItems extends StatelessWidget {
  const TasksItems({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),

        // Report Box
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.14,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01
            ),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
                vertical: MediaQuery.of(context).size.height * 0.01
            ),
            decoration: BoxDecoration(
                color: taskReportBox,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: taskReportBoxShadow,
                      blurRadius: 20
                  )
                ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //from
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05
                      ),
                      decoration: BoxDecoration(
                        color: taskReportBoxDate.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: taskReportBoxDateBorder.withOpacity(0.5)),
                      ),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "از تاریخ",
                              style: TextStyle(
                                  color: taskItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.035
                              ),
                            ),

                            SvgPicture.asset(
                              'assets/svg/calendar.svg',
                              height: MediaQuery.of(context).size.height * 0.025,
                            )

                          ],
                        ),
                        onTap: () async{

                          await showPersianDatePicker(
                            context: context,
                            initialDate: Jalali.now(),
                            firstDate: Jalali(1300, 8),
                            lastDate: Jalali(1500, 9),
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Color(0xFF312E81), // header background color
                                    onPrimary: Color(0xFFECF0F3), // header text color
                                    onSurface: Color(0xFFECF0F3),
                                    // body text color
                                  ),

                                  dialogBackgroundColor: taskShadow.withOpacity(0.8),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Color(0xFFECF0F3), // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                              //   Theme(
                              //   data: ThemeData(
                              //
                              //     colorScheme: ColorScheme.light(
                              //       primary: Color(0xFF312E81),
                              //       onPrimary: Color(0xFFECF0F3),
                              //       onSurface: Color(0xFFECF0F3),
                              //     ),
                              //     textButtonTheme: TextButtonThemeData(
                              //       style: TextButton.styleFrom(
                              //           primary: Color(0xFFECF0F3),
                              //           textStyle: TextStyle(
                              //             fontFamily: 'irs'
                              //           )),
                              //     ),
                              //     dialogTheme: DialogTheme(
                              //       backgroundColor: Color(0xFF312E81),
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.all(
                              //             Radius.circular(0)),
                              //       ),
                              //     ),
                              //
                              //     // textTheme: TextTheme(
                              //     //     headlineLarge: AppTextStyle.style14wBlueButton,
                              //     //     titleLarge:
                              //     //     AppTextStyle.style14wBlueButton, // Selected Date portrait
                              //     //     labelSmall:
                              //     //     AppTextStyle.style14wBlueButton, // Title - SELECT DATE
                              //     //     bodyLarge:
                              //     //     AppTextStyle.style14wBlueButton, // year gridbview picker
                              //     //     titleMedium: AppTextStyle.style14wBlueButton, // input
                              //     //     titleSmall:
                              //     //     AppTextStyle.style14wBlueButton, // month/year picker
                              //     //     bodySmall: AppTextStyle.style14wBlueButton // days
                              //     // ),
                              //   ),
                              //   child: child!,
                              // );
                            },

                          );

                        },
                      ),
                    ),

                    //to
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.height * 0.05,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05
                      ),
                      decoration: BoxDecoration(
                        color: taskReportBoxDate.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: taskReportBoxDateBorder.withOpacity(0.5)),
                      ),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "تا تاریخ",
                              style: TextStyle(
                                  color: taskItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.035
                              ),
                            ),

                            SvgPicture.asset(
                              'assets/svg/calendar.svg',
                              height: MediaQuery.of(context).size.height * 0.025,
                            )

                          ],
                        ),
                        onTap: () async{

                          await showPersianDatePicker(
                            context: context,
                            initialDate: Jalali.now(),
                            firstDate: Jalali(1300, 8),
                            lastDate: Jalali(1500, 9),
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: Color(0xFF312E81), // header background color
                                    onPrimary: Color(0xFFECF0F3), // header text color
                                    onSurface: Color(0xFFECF0F3),
                                    // body text color
                                  ),

                                  dialogBackgroundColor: taskShadow.withOpacity(0.8),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Color(0xFFECF0F3), // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                              //   Theme(
                              //   data: ThemeData(
                              //
                              //     colorScheme: ColorScheme.light(
                              //       primary: Color(0xFF312E81),
                              //       onPrimary: Color(0xFFECF0F3),
                              //       onSurface: Color(0xFFECF0F3),
                              //     ),
                              //     textButtonTheme: TextButtonThemeData(
                              //       style: TextButton.styleFrom(
                              //           primary: Color(0xFFECF0F3),
                              //           textStyle: TextStyle(
                              //             fontFamily: 'irs'
                              //           )),
                              //     ),
                              //     dialogTheme: DialogTheme(
                              //       backgroundColor: Color(0xFF312E81),
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.all(
                              //             Radius.circular(0)),
                              //       ),
                              //     ),
                              //
                              //     // textTheme: TextTheme(
                              //     //     headlineLarge: AppTextStyle.style14wBlueButton,
                              //     //     titleLarge:
                              //     //     AppTextStyle.style14wBlueButton, // Selected Date portrait
                              //     //     labelSmall:
                              //     //     AppTextStyle.style14wBlueButton, // Title - SELECT DATE
                              //     //     bodyLarge:
                              //     //     AppTextStyle.style14wBlueButton, // year gridbview picker
                              //     //     titleMedium: AppTextStyle.style14wBlueButton, // input
                              //     //     titleSmall:
                              //     //     AppTextStyle.style14wBlueButton, // month/year picker
                              //     //     bodySmall: AppTextStyle.style14wBlueButton // days
                              //     // ),
                              //   ),
                              //   child: child!,
                              // );
                            },

                          );

                        },
                      ),
                    ),

                  ],
                ),

                // button
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.6,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.15
                  ),
                  decoration: BoxDecoration(
                      color: taskReportBoxButton,
                      borderRadius: BorderRadius.circular(26),
                      border: Border.all(
                          color: taskReportBoxButtonBorder.withOpacity(0.8)
                      )
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))
                    ),
                    child: Text(
                      "گزارش",
                      style: TextStyle(
                          color: taskReportBoxButtonBorder,
                          fontSize: MediaQuery.of(context).size.width * 0.035
                      ),
                    ),
                  ),
                )


              ],
            ),
          ),
        ),

        // Search TextField
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                  color: inputTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.04
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: inputColor,
                contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.03
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: inputTextColor.withOpacity(0.4)),
                    borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: inputTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                ),
                hintStyle: TextStyle(
                    color: inputTextColor,
                    fontSize: MediaQuery.of(context).size.width * 0.04
                ),
                hintText: "جستجو",
                suffixIcon: Icon(
                    Icons.search_rounded,
                    size: MediaQuery.of(context).size.width * 0.07,
                    color: inputTextColor
                ),
              ),
            ),
          ),
        ),

        // Items List
        Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),

                  decoration: BoxDecoration(
                      color: taskItems,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                            color: taskShadow,
                            blurRadius: 10
                        )
                      ]
                  ),

                  child: Row(
                    children: [

                      //status
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                            color: taskGreen,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(24),
                                bottomRight: Radius.circular(24)
                            )
                        ),
                      ),

                      //details
                      Column(
                        children: [

                          // Column 1 title
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.75,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: taskDivider
                                    )
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                // title
                                Text(
                                  "اجرای کامل ویدئو",
                                  style: TextStyle(
                                    color: taskItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.04,
                                  ),
                                ),

                                // date
                                Text(
                                  "تاریخ: 20:30 1403/03/01",
                                  style: TextStyle(
                                    color: taskItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Column 2 detail
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.75,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              MediaQuery.of(context).size.height * 0.005,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                // before
                                Text(
                                  "قبل: 2.780.000",
                                  style: TextStyle(
                                    color: taskItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),

                                // change
                                Text(
                                  "تغییر: 420.000",
                                  style: TextStyle(
                                    color: taskItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),

                                // after
                                Text(
                                  "بعد: 3.200.000",
                                  style: TextStyle(
                                    color: taskItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                );
              },
            )
        )

      ],
    );
  }
}
