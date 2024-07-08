import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ponisha_app/views/navigation/pages_topbar_2.dart';
import 'package:ponisha_app/views/search/search_colors.dart';

import '../../controllers/search_controller.dart';
import '../components/background.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';

// Search Main Style
class Search extends StatelessWidget {
  const Search({super.key});

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

                FoundItems(),

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


class FoundItems extends StatelessWidget {
  const FoundItems({super.key});

  @override
  Widget build(BuildContext context) {

    final SearchItemsController controller =
    Get.put(SearchItemsController());

    return Stack(
      children: [

        // Items List
        Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.72,
            child: ListView(

              children: [

                //video 1
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.05
                  ),
                  decoration: BoxDecoration(
                      color: videoItemsColor,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [BoxShadow(
                          color: Color(0xFF100D54),
                          blurRadius: 20
                      )]
                  ),
                  child: Row(
                    children: [
                      // Detail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.04,
                            vertical: MediaQuery.of(context).size.height * 0.02
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            //title
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'ویدئو ۱',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width * 0.044
                                ),
                              ),
                            ),

                            //description
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'توضیحات',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.039
                                ),
                              ),
                            ),

                            //income
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'میزان درآمد: 8.000 تومان',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.029
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      // Video Thumbnail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [

                            //image
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                  vertical: MediaQuery.of(context).size.height * 0.005
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/search/1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //status
                            Positioned(
                                bottom: MediaQuery.of(context).size.height * 0.005,
                                left: MediaQuery.of(context).size.width * 0.44,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.06,
                                  alignment: Alignment.bottomLeft,
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2D9CDB),
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFFECF0F3).withOpacity(0.6)
                                          )
                                      ),

                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //video 2
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.05
                  ),
                  decoration: BoxDecoration(
                      color: videoItemsColor,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [BoxShadow(
                          color: Color(0xFF100D54),
                          blurRadius: 20
                      )]
                  ),
                  child: Row(
                    children: [
                      // Detail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.04,
                            vertical: MediaQuery.of(context).size.height * 0.02
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            //title
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'ویدئو ۲',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width * 0.044
                                ),
                              ),
                            ),

                            //description
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'توضیحات',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.039
                                ),
                              ),
                            ),

                            //income
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'میزان درآمد: 8.000 تومان',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.029
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      // Video Thumbnail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [

                            //image
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                  vertical: MediaQuery.of(context).size.height * 0.005
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/search/2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //status
                            Positioned(
                                bottom: MediaQuery.of(context).size.height * 0.005,
                                left: MediaQuery.of(context).size.width * 0.44,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.06,
                                  alignment: Alignment.bottomLeft,
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2D9CDB),
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFFECF0F3).withOpacity(0.6)
                                          )
                                      ),

                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //video 3
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.05
                  ),
                  decoration: BoxDecoration(
                      color: videoItemsColor,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [BoxShadow(
                          color: Color(0xFF100D54),
                          blurRadius: 20
                      )]
                  ),
                  child: Row(
                    children: [
                      // Detail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.04,
                            vertical: MediaQuery.of(context).size.height * 0.02
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            //title
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'ویدئو ۳',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width * 0.044
                                ),
                              ),
                            ),

                            //description
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'توضیحات',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.039
                                ),
                              ),
                            ),

                            //income
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'میزان درآمد: 8.000 تومان',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.029
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      // Video Thumbnail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [

                            //image
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                  vertical: MediaQuery.of(context).size.height * 0.005
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/search/3.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //status
                            Positioned(
                                bottom: MediaQuery.of(context).size.height * 0.005,
                                left: MediaQuery.of(context).size.width * 0.44,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.06,
                                  alignment: Alignment.bottomLeft,
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFEB5757),
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFFECF0F3).withOpacity(0.6)
                                          )
                                      ),

                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //video 4
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01,
                      horizontal: MediaQuery.of(context).size.width * 0.05
                  ),
                  decoration: BoxDecoration(
                      color: videoItemsColor,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [BoxShadow(
                          color: Color(0xFF100D54),
                          blurRadius: 20
                      )]
                  ),
                  child: Row(
                    children: [
                      // Detail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.04,
                            vertical: MediaQuery.of(context).size.height * 0.02
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            //title
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'ویدئو ۴',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width * 0.044
                                ),
                              ),
                            ),

                            //description
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'توضیحات',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.039
                                ),
                              ),
                            ),

                            //income
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'میزان درآمد: 8.000 تومان',
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: TextStyle(
                                    color: videoTextColor,
                                    fontSize: MediaQuery.of(context).size.width * 0.029
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      // Video Thumbnail
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.centerLeft,
                        child: Stack(
                          children: [

                            //image
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.height * 0.2,
                              padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                  vertical: MediaQuery.of(context).size.height * 0.005
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/search/4.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //status
                            Positioned(
                                bottom: MediaQuery.of(context).size.height * 0.005,
                                left: MediaQuery.of(context).size.width * 0.44,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.06,
                                  alignment: Alignment.bottomLeft,
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF27AE60),
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(
                                              color: const Color(0xFFECF0F3).withOpacity(0.6)
                                          )
                                      ),

                                    ),
                                  ),
                                )
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            )
        ),

        // Sort and Filter
        Positioned(
          top: MediaQuery.of(context).size.height * 0.17,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01
                    ),
                    child: SvgPicture.asset(
                      'assets/search/filter.svg',
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),

                  Obx(() => InkWell(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: controller.searchSort.value == 0
                        ?MediaQuery.of(context).size.height * 0.045
                        :MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        color: controller.searchSort.value == 0
                          ?Colors.transparent
                          :inputColor.withOpacity(0.9),
                        border: Border.all(
                          color: controller.searchSort.value == 0
                            ?const Color(0xFFFFFFFF).withOpacity(0.5)
                            :const Color(0xFF0BD6F6)
                        ),
                        borderRadius: BorderRadius.circular(26)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.006
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
                                        'همه',
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
                      if( controller.searchSort.value == 1){
                        controller.searchSort.value = 0;
                      }
                      else{
                        controller.searchSort.value = 1;
                      }
                    },
                  )),

                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01
                    ),
                    child: SvgPicture.asset(
                      'assets/search/sort.svg',
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),

                  Obx(() => InkWell(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: MediaQuery.of(context).size.width * 0.33,
                      height: controller.searchFilter.value == 0
                          ?MediaQuery.of(context).size.height * 0.045
                          :MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: controller.searchFilter.value == 0
                              ?Colors.transparent
                              :inputColor.withOpacity(0.9),
                          border: Border.all(
                              color: controller.searchFilter.value == 0
                                  ?const Color(0xFFFFFFFF).withOpacity(0.5)
                                  :const Color(0xFF0BD6F6)
                          ),
                          borderRadius: BorderRadius.circular(26)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.006
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
                                          'پر بازدید ‌ترین',
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
                      if( controller.searchFilter.value == 1){
                        controller.searchFilter.value = 0;
                      }
                      else{
                        controller.searchFilter.value = 1;
                      }
                    },
                  )),

                ],
              ),
            ),
          ),
        ),

        //search input
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
        ),

      ],
    );

  }
}
