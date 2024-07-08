import 'package:flutter/material.dart';
import 'package:ponisha_app/views/bank_account/bank_account_colors.dart';

import '../components/background.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import '../navigation/pages_topbar_2.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

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
                  BankAccountItems(),

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

class BankAccountItems extends StatelessWidget {
  const BankAccountItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),

        // Add Button
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //button
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                    color: bankAccountAddButton.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(26)
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))
                    ),
                    child: Text(
                      "افزودن حساب بانکی",
                      style: TextStyle(
                        color: bankAccountAddButtonText,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(

                            backgroundColor: const Color(0xFF6902E7).withOpacity(0.8),

                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0))
                            ),
                            actionsAlignment: MainAxisAlignment.center,

                            content: Text(
                              'راهنما',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: const Color(0xFFECF0F3),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            ),

                            actions: <Widget>[

                              TextButton(

                                onPressed: () => Navigator.of(context).pop(false),

                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: MediaQuery.of(context).size.height * 0.01,
                                      horizontal: MediaQuery.of(context).size.width * 0.01
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: const Color(0xFF02EEFB)
                                  ),
                                  child: Text(
                                    'تایید',
                                    style: TextStyle(
                                        color: const Color(0xFF6902E7),
                                        fontSize: MediaQuery.of(context).size.width * 0.035,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),

                              ),

                            ],

                          );
                        }
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02
                        ),
                        child: Icon(
                          Icons.help_outline_rounded,
                          size: MediaQuery.of(context).size.width * 0.06,
                          color: bankAccountAddButton.withOpacity(0.8),
                        ),
                      ),

                      Text(
                        "راهنما",
                        style: TextStyle(
                            color: bankAccountAddButton.withOpacity(0.8),
                            fontSize: MediaQuery.of(context).size.width * 0.04
                        ),
                      )
                    ],
                  ),
                )


              ],
            )
          ),
        ),

        // Items List
        Expanded(
            child: ListView(
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  decoration: BoxDecoration(
                      color: bankAccountItems,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                            color: bankAccountItemsShadow,
                            blurRadius: 20
                        )
                      ]
                  ),

                  child: Row(
                    children: [

                      // CheckBox
                      Container(
                        height: MediaQuery.of(context).size.height * 0.19,
                        width: MediaQuery.of(context).size.width * 0.1,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            side: BorderSide(color: bankAccountItemsCheckBox.withOpacity(0.8)),
                            checkColor: Colors.white,
                            activeColor: bankAccountItemsCheckBox.withOpacity(0.8),
                            value: false,
                            onChanged: (val) {

                              }
                          ),
                        ),
                      ),

                      //details
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // BankName
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "بانک کشاورزی",
                              style: TextStyle(
                                  color: bankAccountItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          // Bank Account Number
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              MediaQuery.of(context).size.height * 0.03,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "iR1254362000000005366004800",
                              style: TextStyle(
                                color: bankAccountItemsText,
                                fontSize: MediaQuery.of(context).size.width * 0.034,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),

                          // name and date
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                    color: bankAccountItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),
                                Text(
                                  "تاریخ انقضا",
                                  style: TextStyle(
                                    color: bankAccountItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  decoration: BoxDecoration(
                      color: bankAccountItems,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                            color: bankAccountItemsShadow,
                            blurRadius: 20
                        )
                      ]
                  ),

                  child: Row(
                    children: [

                      // CheckBox
                      Container(
                        height: MediaQuery.of(context).size.height * 0.19,
                        width: MediaQuery.of(context).size.width * 0.1,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(color: bankAccountItemsCheckBox.withOpacity(0.8)),
                              checkColor: Colors.white,
                              activeColor: bankAccountItemsCheckBox.withOpacity(0.8),
                              value: false,
                              onChanged: (val) {

                              }
                          ),
                        ),
                      ),

                      //details
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // BankName
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "بانک صادرات",
                              style: TextStyle(
                                  color: bankAccountItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          // Bank Account Number
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              MediaQuery.of(context).size.height * 0.03,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "iR1254362000000005366004800",
                              style: TextStyle(
                                  color: bankAccountItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.034,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),

                          // name and date
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                    color: bankAccountItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),
                                Text(
                                  "تاریخ انقضا",
                                  style: TextStyle(
                                      color: bankAccountItemsText,
                                      fontSize: MediaQuery.of(context).size.width * 0.03,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                //image item
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  decoration: BoxDecoration(
                      color: bankAccountItems,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                            color: bankAccountItemsShadow,
                            blurRadius: 20
                        )
                      ]
                  ),

                  child: Row(
                    children: [

                      // CheckBox
                      Container(
                        height: MediaQuery.of(context).size.height * 0.19,
                        width: MediaQuery.of(context).size.width * 0.1,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              side: BorderSide(color: bankAccountItemsCheckBox.withOpacity(0.8)),
                              checkColor: Colors.white,
                              activeColor: bankAccountItemsCheckBox.withOpacity(0.8),
                              value: false,
                              onChanged: (val) {

                              }
                          ),
                        ),
                      ),

                      //details
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // Image
                          Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.7,
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.05,
                                MediaQuery.of(context).size.height * 0.01,
                                MediaQuery.of(context).size.width * 0.05,
                                0,
                              ),
                              child: Image.asset(
                                  "assets/images/other/melli.png"
                              )
                          ),

                          // BankName
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "بانک ملی",
                              style: TextStyle(
                                  color: bankAccountItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                          // Bank Account Number
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              MediaQuery.of(context).size.height * 0.03,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Text(
                              "iR1254362000000005366004800",
                              style: TextStyle(
                                  color: bankAccountItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.034,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),

                          // name and date
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                              MediaQuery.of(context).size.width * 0.05,
                              0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "نام و نام خانوادگی",
                                  style: TextStyle(
                                    color: bankAccountItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                ),
                                Text(
                                  "تاریخ انقضا",
                                  style: TextStyle(
                                      color: bankAccountItemsText,
                                      fontSize: MediaQuery.of(context).size.width * 0.03,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

              ],
            )
        )

      ],
    );
  }
}
