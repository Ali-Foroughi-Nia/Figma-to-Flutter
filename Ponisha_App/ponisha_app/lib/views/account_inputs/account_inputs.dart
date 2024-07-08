import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ponisha_app/views/navigation/pages_topbar_2.dart';

import '../../controllers/account_input_controller.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import 'account_inputs_colors.dart';

class AccountInputs extends StatelessWidget {
  const AccountInputs({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: Stack(
              children: [

                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const DecoratedBox(
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
                    ),
                  ),
                ),

                // Items
                const SingleChildScrollView(
                  child: AccountInputsItems()
                ),

                // top bar
                // const PagesTopBar()
                const PagesTopBar2()

              ],
            ),
            drawer: const DrawerPattern(),
          ),
        )
    );

  }
}

class AccountInputsItems extends StatelessWidget {
  const AccountInputsItems({super.key});

  @override
  Widget build(BuildContext context) {

    final AccountInputController controller =
    Get.put(AccountInputController());

    final List<String> amount = [
      '1000 تومان',
      '2000 تومان',
      '3000 تومان',
      '4000 تومان',
      '50000 تومان',
      '100000 تومان',
      '6000 تومان',
      '71000 تومان',
    ];

    final List<String> year = [
      '1403',
      '1402',
      '1401',
      '1400',
      '1399',
      '1398',
      '1397',
      '1396',
    ];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
      
          // Upload Image and Submit
          Positioned(
            top: MediaQuery.of(context).size.height * 0.66,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Column(
                children: [
      
                  //date
                  Padding(
                    padding: EdgeInsets.symmetric(
                        // horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.01
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
                            color: accountInputTextColor,
                            fontSize: MediaQuery.of(context).size.width * 0.04
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: accountInputColor.withOpacity(0.8),
                          contentPadding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.03,
                              MediaQuery.of(context).size.height * 0.03,
                              MediaQuery.of(context).size.width * 0.03,
                              0
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
                              borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: accountInputsText.withOpacity(0.8)),
                            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                          ),
                          hintStyle: TextStyle(
                              color: accountInputTextColor.withOpacity(0.8),
                              fontSize: MediaQuery.of(context).size.width * 0.04
                          ),
                          hintText: "تاریخ",
                        ),
                      ),
                    ),
                  ),
      
                  // upload image
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: accountInputColor,
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(
                          color: accountInputsText.withOpacity(0.8)
                        )
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/upload.svg',
                            colorFilter: ColorFilter.mode(accountInputsText.withOpacity(0.8), BlendMode.srcIn),
                            width: MediaQuery.of(context).size.width * 0.06,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.005,
                                right: MediaQuery.of(context).size.width * 0.04
                            ),
                            child: Text(
                              'آپلود تصویر',
                              style: TextStyle(
                                  color: accountInputsText.withOpacity(0.8),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
      
                  // submit
                  Padding(
                    padding: EdgeInsets.symmetric(
                      // horizontal: MediaQuery.of(context).size.width * 0.15,
                      vertical: MediaQuery.of(context).size.height * 0.02
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: accountInputsText.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(26)
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "تایید",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            color: accountInputColor,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
      
          //Date
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            child:  Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
      
                  // Year
                  Obx(() => InkWell(
                    child: Stack(
                      children: [
      
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: controller.yearDropDownMenu.value == 0
                            ?MediaQuery.of(context).size.height * 0.06
                            :MediaQuery.of(context).size.height * 0.2,
                          alignment: FractionalOffset.center,
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012),
                          decoration: BoxDecoration(
                            color: accountInputColor.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(26),
                            border: Border.all(
                                color: controller.yearDropDownMenu.value == 0
                                ?Colors.white.withOpacity(0.5)
                                :accountInputsText.withOpacity(0.8)
                            ),
                          ),
                          child: Column(
      
                            children: [
      
                              //title
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.014
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      controller.yearDropDownMenuItem.value,
                                      style: TextStyle(
                                          color: accountInputTextColor.withOpacity(0.6),
                                          fontSize: MediaQuery.of(context).size.width * 0.04
                                      ),
                                    ),
                                    Icon(
                                      controller.yearDropDownMenu.value == 0
                                        ?Icons.expand_more_rounded
                                        :Icons.expand_less_rounded,
                                      color: accountInputTextColor.withOpacity(0.6),
                                      size: MediaQuery.of(context).size.width * 0.04,
                                    )
                                  ],
                                ),
                              ),
      
                              Expanded(
                                child: ListView.builder(
                                  itemCount: year.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: MediaQuery.of(context).size.height * 0.006
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          year[index],
                                          style: TextStyle(
                                            color: controller.yearDropDownMenuIndex.value == index
                                              ?accountInputsText
                                              :accountInputTextColor.withOpacity(0.9),
                                            fontSize: MediaQuery.of(context).size.width * 0.035
                                          ),
                                        ),
                                      ),
                                      onTap: (){
                                        controller.yearDropDownMenuItem.value = year[index];
                                        controller.yearDropDownMenuIndex.value = index;
                                        controller.yearDropDownMenu.value = 0;
                                      },
                                    );
                                  },
                                )
                              )
      
                            ],
                          ),
                        ),
      
                        // title
                        AnimatedOpacity(
                          opacity: controller.yearDropDownMenu.value == 0
                            ?0
                            :1,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'سال',
                              style: TextStyle(
                                backgroundColor: accountInputColor,
                                color: accountInputTextColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        )
      
                      ],
                    ),
                    onTap: (){
                      if(controller.yearDropDownMenu.value == 0){
                        controller.yearDropDownMenu.value = 1;
                      }
                      else{
                        controller.yearDropDownMenu.value = 0;
                      }
                    },
                  )),
      
                  // Month
                  Obx(() => InkWell(
                    child: Stack(
                      children: [
      
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: controller.monthDropDownMenu.value == 0
                              ?MediaQuery.of(context).size.height * 0.06
                              :MediaQuery.of(context).size.height * 0.2,
                          alignment: FractionalOffset.center,
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012),
                          decoration: BoxDecoration(
                            color: accountInputColor.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(26),
                            border: Border.all(
                                color: controller.monthDropDownMenu.value == 0
                                    ?Colors.white.withOpacity(0.5)
                                    :accountInputsText.withOpacity(0.8)
                            ),
                          ),
                          child: Column(
      
                            children: [
      
                              //title
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: MediaQuery.of(context).size.height * 0.014
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      controller.monthDropDownMenuItem.value,
                                      style: TextStyle(
                                          color: accountInputTextColor.withOpacity(0.6),
                                          fontSize: MediaQuery.of(context).size.width * 0.04
                                      ),
                                    ),
                                    Icon(
                                      controller.monthDropDownMenu.value == 0
                                          ?Icons.expand_more_rounded
                                          :Icons.expand_less_rounded,
                                      color: accountInputTextColor.withOpacity(0.6),
                                      size: MediaQuery.of(context).size.width * 0.04,
                                    )
                                  ],
                                ),
                              ),
      
                              Expanded(
                                  child: ListView.builder(
                                    itemCount: year.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: MediaQuery.of(context).size.height * 0.006
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            year[index],
                                            style: TextStyle(
                                                color: controller.monthDropDownMenuIndex.value == index
                                                    ?accountInputsText
                                                    :accountInputTextColor.withOpacity(0.9),
                                                fontSize: MediaQuery.of(context).size.width * 0.035
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          controller.monthDropDownMenuItem.value = year[index];
                                          controller.monthDropDownMenuIndex.value = index;
                                          controller.monthDropDownMenu.value = 0;
                                        },
                                      );
                                    },
                                  )
                              )
      
                            ],
                          ),
                        ),
      
                        // title
                        AnimatedOpacity(
                          opacity: controller.monthDropDownMenu.value == 0
                              ?0
                              :1,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'ماه',
                              style: TextStyle(
                                backgroundColor: accountInputColor,
                                color: accountInputTextColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        )
      
                      ],
                    ),
                    onTap: (){
                      if(controller.monthDropDownMenu.value == 0){
                        controller.monthDropDownMenu.value = 1;
                      }
                      else{
                        controller.monthDropDownMenu.value = 0;
                      }
                    },
                  )),
      
                  // Day
                  Obx(() => InkWell(
                    child: Stack(
                      children: [
      
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: controller.dayDropDownMenu.value == 0
                              ?MediaQuery.of(context).size.height * 0.06
                              :MediaQuery.of(context).size.height * 0.2,
                          alignment: FractionalOffset.center,
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.012),
                          decoration: BoxDecoration(
                            color: accountInputColor.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(26),
                            border: Border.all(
                                color: controller.dayDropDownMenu.value == 0
                                    ?Colors.white.withOpacity(0.5)
                                    :accountInputsText.withOpacity(0.8)
                            ),
                          ),
                          child: Column(
      
                            children: [
      
                              //title
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: MediaQuery.of(context).size.height * 0.014
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      controller.dayDropDownMenuItem.value,
                                      style: TextStyle(
                                          color: accountInputTextColor.withOpacity(0.6),
                                          fontSize: MediaQuery.of(context).size.width * 0.04
                                      ),
                                    ),
                                    Icon(
                                      controller.dayDropDownMenu.value == 0
                                          ?Icons.expand_more_rounded
                                          :Icons.expand_less_rounded,
                                      color: accountInputTextColor.withOpacity(0.6),
                                      size: MediaQuery.of(context).size.width * 0.04,
                                    )
                                  ],
                                ),
                              ),
      
                              Expanded(
                                  child: ListView.builder(
                                    itemCount: year.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: MediaQuery.of(context).size.height * 0.006
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            year[index],
                                            style: TextStyle(
                                                color: controller.dayDropDownMenuIndex.value == index
                                                    ?accountInputsText
                                                    :accountInputTextColor.withOpacity(0.9),
                                                fontSize: MediaQuery.of(context).size.width * 0.035
                                            ),
                                          ),
                                        ),
                                        onTap: (){
                                          controller.dayDropDownMenuItem.value = year[index];
                                          controller.dayDropDownMenuIndex.value = index;
                                          controller.dayDropDownMenu.value = 0;
                                        },
                                      );
                                    },
                                  )
                              )
      
                            ],
                          ),
                        ),
      
                        // title
                        AnimatedOpacity(
                          opacity: controller.dayDropDownMenu.value == 0
                              ?0
                              :1,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            alignment: Alignment.topCenter,
                            child: Text(
                              'روز',
                              style: TextStyle(
                                backgroundColor: accountInputColor,
                                color: accountInputTextColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        )
      
                      ],
                    ),
                    onTap: (){
                      if(controller.dayDropDownMenu.value == 0){
                        controller.dayDropDownMenu.value = 1;
                      }
                      else{
                        controller.dayDropDownMenu.value = 0;
                      }
                    },
                  )),
      
                ],
              )
            ),
          ),
      
          // Date title
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "تاریخ",
                  style: TextStyle(
                      color: accountInputHintText.withOpacity(0.9),
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
      
          // Amount horizontal list
          Positioned(
            top: MediaQuery.of(context).size.height * 0.39,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: amount.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Obx(() => InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.26,
                          margin: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.02,
                              vertical: MediaQuery.of(context).size.height * 0.01
                          ),
                          decoration: BoxDecoration(
                              color: accountInputColor.withOpacity(0.8),
                              border: Border.all(
                                  color: controller.listItems.value == index
                                      ?accountInputsText.withOpacity(0.8)
                                      :accountInputTextColor.withOpacity(0.6),
                                  width: controller.listItems.value == index
                                      ?2
                                      :1
                              ),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Text(
                              amount[index],
                              style: TextStyle(
                                  color: controller.listItems.value == index
                                      ?accountInputsText
                                      :accountInputTextColor.withOpacity(0.6)
                              ),
                            ),
                          ),
                        ),
                        onTap: (){
                          controller.listItems.value = index;
                        },
                      )),
                    );
                  },
                ),
              ),
            )
          ),
      
          // Amount title
          Positioned(
            top: MediaQuery.of(context).size.height * 0.37,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "مقدار پرداختی هر مشاهده",
                  style: TextStyle(
                      color: accountInputHintText.withOpacity(0.9),
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
      
          // dropdown menu
          Positioned(
            top: MediaQuery.of(context).size.height * 0.24,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.02
                ),
                child: Obx(() => InkWell(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    height: controller.dropDownMenu.value == 0
                      ?MediaQuery.of(context).size.height * 0.062
                      :MediaQuery.of(context).size.height * 0.22,
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                      vertical: MediaQuery.of(context).size.height * 0.015,
                    ),
                    decoration: BoxDecoration(
                        color: accountInputColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(
                          color: controller.dropDownMenu.value == 0
                            ?Colors.white.withOpacity(0.5)
                            :accountInputsText.withOpacity(0.8)
                        )
                    ),
                    child: Column(
                      children: [
                        // header
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
      
                            Text(
                              controller.dropDownMenuItem.value,
                              style: TextStyle(
                                  color: accountInputTextColor.withOpacity(0.8),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                            ),
      
                            Icon(
                              controller.dropDownMenu.value == 0
                                ?Icons.expand_more_rounded
                                :Icons.expand_less_rounded,
                              size: MediaQuery.of(context).size.width * 0.06,
                              color: accountInputTextColor.withOpacity(0.8),
                            ),
      
                          ],
                        ),
      
                        Visibility(
                          visible: controller.dropDownMenu.value == 0
                            ?false
                            :true,
                          child: Expanded(
                              child: ListView.builder(
                                itemCount: amount.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.height * 0.01
                                      ),
                                      child: Text(
                                        amount[index],
                                        style: TextStyle(
                                          color: controller.dropDownMenuIndex.value == index
                                            ?accountInputsText.withOpacity(0.8)
                                            :accountInputTextColor
                                        ),
                                      ),
                                    ),
                                    onTap: (){
                                      controller.dropDownMenuItem.value = amount[index];
                                      controller.dropDownMenuIndex.value = index;
                                      controller.dropDownMenu.value = 0;
                                    },
                                  );
                                },
                              )
                          )
                        )
      
                      ],
                    ),
                  ),
                  onTap: (){
                    if(controller.dropDownMenu.value == 0){
                      controller.dropDownMenu.value = 1;
                    }
                    else{
                      controller.dropDownMenu.value = 0;
                    }
                  },
                ))
      
            ),
          ),
      
          // texts
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.09,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
      
                Text(
                  "کمیسیون: 0 تومان",
                  style: TextStyle(
                      color: accountInputHintText.withOpacity(0.9),
                      fontSize: MediaQuery.of(context).size.width * 0.035
                  ),
                ),
      
                Text(
                  "باقی مانده: 0 تومان",
                  style: TextStyle(
                      color: accountInputHintText.withOpacity(0.9),
                      fontSize: MediaQuery.of(context).size.width * 0.035
                  ),
                ),
      
              ],
            ),
          ),
          ),
      
          // Amount TextField
          Positioned(
            top: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.01
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
                      color: accountInputTextColor,
                      fontSize: MediaQuery.of(context).size.width * 0.04
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: accountInputColor.withOpacity(0.8),
                    contentPadding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.03,
                        MediaQuery.of(context).size.height * 0.03,
                        MediaQuery.of(context).size.width * 0.03,
                        0
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
                        borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: accountInputsText.withOpacity(0.8)),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    hintStyle: TextStyle(
                        color: accountInputTextColor.withOpacity(0.8),
                        fontSize: MediaQuery.of(context).size.width * 0.04
                    ),
                    hintText: "مبلغ کل",
                  ),
                ),
              ),
            ),
          ),
      
          //help
          Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.3
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: MaterialButton(
                    onPressed: (){
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
                                        color: const Color(0xFF0BD6F6).withOpacity(0.8)
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(
                          Icons.help_outline_rounded,
                          size: MediaQuery.of(context).size.width * 0.06,
                          color: accountInputsText.withOpacity(0.8),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.02,
                              top: MediaQuery.of(context).size.height * 0.005
                          ),
                          child: Text(
                            "راهنما",
                            style: TextStyle(
                                color: accountInputsText.withOpacity(0.8),
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              )
          ),
      
        ],
      ),
    );
  }
}
