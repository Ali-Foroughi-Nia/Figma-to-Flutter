import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ponisha_app/views/transaction/transaction_colors.dart';

import '../../controllers/transaction_controller.dart';
import '../components/background.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import '../search/search_colors.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

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
                  TransactionItems(),

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

class TransactionItems extends StatelessWidget {
  const TransactionItems({super.key});

  @override
  Widget build(BuildContext context) {

    final TransactionController controller =
    Get.put(TransactionController());

    return Stack(
      children: [

        // Items
        Positioned(
          top: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.75,
          child: ListView(
            children: [

              // transaction 1 Green
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.01
                ),

                decoration: BoxDecoration(
                  color: transactionItems,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: transactionItemsShadow,
                      blurRadius: 20
                    )
                  ]
                ),

                child: Row(
                  children: [

                    //status
                    Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width * 0.04,
                      decoration: BoxDecoration(
                        color: transactionGreen,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomRight: Radius.circular(24)
                        )
                      ),
                    ),

                    //details
                    Column(
                      children: [

                        //title
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
                                color: transactionDivider
                              )
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // title
                              Text(
                                "عنوان",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              // Clock
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.09,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: transactionClock.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                        color: transactionClock.withOpacity(0.8)
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: transactionShadow,
                                          blurRadius: 3.33,
                                        )
                                      ]
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/svg/clock.svg",
                                        width: MediaQuery.of(context).size.width * 0.06,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        // date
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // from
                              Text(
                                "از تاریخ: 1403/03/01",
                                style: TextStyle(
                                    color: transactionItemsText,
                                    fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),

                              // to
                              Text(
                                "تا تاریخ: 1403/03/01",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // rate
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              // First
                              Text(
                                "نفر اول:10.000.000تومان",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),

                              // Second
                              Text(
                                "نفر دوم: 1.000.000 تومان",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),

                              // Third
                              Text(
                                "نفر سوم: 100.000 تومان",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.04,
                                ),
                              ),

                            ],
                          ),
                        ),

                        // date
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.75,
                          margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // people
                              Text(
                                "افراد مجاز: 10 نفر",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),

                              // people
                              Text(
                                "افراد شرکت کننده: 2 نفر",
                                style: TextStyle(
                                  color: transactionItemsText,
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
              ),

              // transaction 2 white
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.01
                ),

                decoration: BoxDecoration(
                    color: transactionItems,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          color: transactionItemsShadow,
                          blurRadius: 20
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
                          color: transactionWhite,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24)
                          )
                      ),
                    ),

                    //details
                    Column(
                      children: [

                        // title
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // title
                              Text(
                                "عنوان",
                                style: TextStyle(
                                    color: transactionItemsText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              // date
                              Text(
                                "واریز در 12:45 1403/03/25",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // person
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // count
                              Text(
                                "تعداد واریز: 1بار",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),

                              // person
                              Text(
                                "ارائه دهنده: niloofar-v98",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // date
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.75,
                          margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // people
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.55,
                                child: Center(
                                  child: Text(
                                    "مجموع دریافتی: 20.000.000",
                                    style: TextStyle(
                                      color: transactionItemsText,
                                      fontSize: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: transactionClock.withOpacity(0.8)
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: const Icon(Icons.navigate_next),
                                        color: const Color(0xFF4F00B0),
                                      ),
                                    ),
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),

              // transaction 3 blue
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.01
                ),

                decoration: BoxDecoration(
                    color: transactionItems,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          color: transactionItemsShadow,
                          blurRadius: 20
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
                          color: transactionBlue,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24)
                          )
                      ),
                    ),

                    //details
                    Column(
                      children: [

                        // title
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // title
                              Text(
                                "عنوان",
                                style: TextStyle(
                                    color: transactionItemsText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              // date
                              Text(
                                "مشاهده شده در 12:45 1403/03/25",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // person
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
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
                                      color: transactionDivider
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // count
                              Text(
                                "پاداش: 2.000 تومان",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),

                              // person
                              Text(
                                "ارائه دهنده: niloofar-v98",
                                style: TextStyle(
                                  color: transactionItemsText,
                                  fontSize: MediaQuery.of(context).size.width * 0.03,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // date
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.75,
                          margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                            MediaQuery.of(context).size.width * 0.05,
                            0,
                          ),
                          child: Center(
                            child: Text(
                              "به صورت کامل مشاهده نشده است.",
                              style: TextStyle(
                                color: const Color(0xFFFF5959),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),


        // Sort and Filter
        Positioned(
          top: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                  vertical:  MediaQuery.of(context).size.height * 0.01
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01
                    ),
                    child: SvgPicture.asset(
                      'assets/search/sort.svg',
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),

                  Obx(() => InkWell(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: controller.transactionDownMenu.value == 0
                        ?MediaQuery.of(context).size.height * 0.04
                        :MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: controller.transactionDownMenu.value == 0
                              ?Colors.transparent
                              :const Color(0xFF4F00B0).withOpacity(0.9),
                          border: Border.all(
                              color: controller.transactionDownMenu.value == 0
                                  ?const Color(0xFFFFFFFF).withOpacity(0.5)
                                  :const Color(0xFF0BD6F6).withOpacity(0.8)
                          ),
                          borderRadius: BorderRadius.circular(26)
                      ),
                      child: Column(
                        children: [
                          //header
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.004
                            ),
                            child: Row(
                              children: [
                                //text
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.23,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        'محبوب ترین',
                                        style: TextStyle(
                                          color: const Color(0xFFECF0F3),
                                          fontSize: MediaQuery.of(context).size.width * 0.035,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //icon
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.09,
                                  child: Center(
                                    child: Icon(
                                      Icons.expand_more_rounded,
                                      color: const Color(0xFFECF0F3),
                                      size: MediaQuery.of(context).size.width * 0.05,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height * 0.007
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.23,
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height * 0.005
                                        ),
                                        child: Text(
                                          'جدیدترین',
                                          style: TextStyle(
                                            color: const Color(0xFFECF0F3),
                                            fontSize: MediaQuery.of(context).size.width * 0.035,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      if(controller.transactionDownMenu.value == 1){
                        controller.transactionDownMenu.value = 0;
                      }
                      else{
                        controller.transactionDownMenu.value = 1;
                      }
                    },
                  ))

                ],
              ),
            )      ,
          ),
        ),


        // Search TextField
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.06,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.06,
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
        )

      ],
    );

  }
}
