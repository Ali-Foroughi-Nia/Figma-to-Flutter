import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../controllers/account_controller.dart';
import 'account_color.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {

    final AccountController controller =
    Get.put(AccountController());

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: DecoratedBox(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6902E7),
              Color(0xFF3B0181),
            ],
          ),
        ),
        child: SingleChildScrollView(

          child: Stack(
            alignment: Alignment.topCenter,
            children: [

              SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),

                    //account
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.account.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: controller.account.value == 0
                                ? BorderRadius.zero
                                :const BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24)
                                ),
                                border: Border(
                                  bottom: BorderSide(
                                    color: accountItemColors,
                                    width: controller.account.value == 0
                                    ? 0
                                    : 1
                                  ),
                                  left: BorderSide(color: accountItemColors,),
                                  right: BorderSide(color: accountItemColors),
                                  top: BorderSide.none
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.77,
                                  padding: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width * 0.04,
                                    MediaQuery.of(context).size.height * 0.04,
                                    MediaQuery.of(context).size.width * 0.04,
                                    MediaQuery.of(context).size.height * 0.02,
                                  ),
                                  child: Text(
                                    "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                    textDirection: TextDirection.rtl,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 6,
                                    softWrap: false,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: accountItemColors,
                                      fontSize: MediaQuery.of(context).size.width * 0.03
                                    ),
                                  )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.account.value == 0
                                      ?const SizedBox.shrink()
                                      :Icon(
                                        Icons.navigate_next,
                                        color: accountItemColors,
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/account.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "حساب کاربری",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.account.value == 0
                                        ? Icons.expand_more_rounded
                                        : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.account.value == 0){
                                controller.account.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.account.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //transaction
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.transaction.value,
                            ),
                            // height: controller.transaction.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.transaction.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.transaction.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(
                                    bottom: BorderSide(color: accountItemColors,
                                        width: controller.transaction.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.transaction.value == 0
                                      ?const SizedBox.shrink()
                                      :Icon(
                                        Icons.navigate_next,
                                        color: accountItemColors,
                                      ),

                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/dollar.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "صندوق های مالی",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.transaction.value == 0
                                        ?Icons.expand_more_rounded
                                        :Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.transaction.value == 0){
                                controller.transaction.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.transaction.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //edit
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.edit.value,
                            ),
                            // height: controller.transaction.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.edit.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.edit.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(
                                    bottom: BorderSide(color: accountItemColors,
                                        width: controller.edit.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.edit.value == 0
                                      ?const SizedBox.shrink()
                                          :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/edit.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "تکمیل/ ویرایش اطلاعات",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.edit.value == 0
                                            ?Icons.expand_more_rounded
                                            :Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.edit.value == 0){
                                controller.edit.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.edit.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //plus
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.plus.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.plus.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.plus.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(
                                    bottom: BorderSide(color: accountItemColors,
                                        width: controller.plus.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.plus.value == 0
                                        ?const SizedBox.shrink()
                                        :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/plus.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "افزودن شماره شبا",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.plus.value == 0
                                            ? Icons.expand_more_rounded
                                            : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.plus.value == 0){
                                controller.plus.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.plus.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //link
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.link.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.link.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.link.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(

                                    bottom: BorderSide(
                                        color: accountItemColors,
                                        width: controller.link.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors,),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.link.value == 0
                                        ?const SizedBox.shrink()
                                        :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/link.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "کد معرفی و زیرمجموعه",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.link.value == 0
                                            ? Icons.expand_more_rounded
                                            : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.link.value == 0){
                                controller.link.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.link.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //check
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.check.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.check.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.check.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(

                                    bottom: BorderSide(
                                        color: accountItemColors,
                                        width: controller.check.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors,),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.check.value == 0
                                        ?const SizedBox.shrink()
                                        :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/check.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "درخواست تیک آبی",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.check.value == 0
                                            ? Icons.expand_more_rounded
                                            : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.check.value == 0){
                                controller.check.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.check.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //message
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.message.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.message.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.message.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(

                                    bottom: BorderSide(
                                        color: accountItemColors,
                                        width: controller.message.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors,),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.message.value == 0
                                        ?const SizedBox.shrink()
                                        :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors.withOpacity(0.8),
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/message.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "تیکت پشتیبانی",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.message.value == 0
                                            ? Icons.expand_more_rounded
                                            : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.message.value == 0){
                                controller.message.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.message.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //shield
                    Obx((){
                      return Stack(
                        children: [

                          //bottom
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: MediaQuery.of(context).size.width * 0.9,
                            constraints: BoxConstraints(
                              maxHeight: controller.shield.value,
                            ),
                            // height: controller.account.value,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.04
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        controller.shield.value == 0
                                            ?0
                                            :24
                                    ),
                                    bottomRight: Radius.circular(
                                        controller.shield.value == 0
                                            ?0
                                            :24
                                    )
                                ),
                                border: Border(

                                    bottom: BorderSide(
                                        color: accountItemColors,
                                        width: controller.shield.value == 0
                                            ? 0
                                            : 1
                                    ),
                                    left: BorderSide(color: accountItemColors,),
                                    right: BorderSide(color: accountItemColors)
                                )
                            ),
                            child: Row(
                              children: [
                                //Text
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.77,
                                    padding: EdgeInsets.fromLTRB(
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.04,
                                      MediaQuery.of(context).size.width * 0.04,
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    child: Text(
                                      "ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی",
                                      textDirection: TextDirection.rtl,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 6,
                                      softWrap: false,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: accountItemColors,
                                        fontSize: MediaQuery.of(context).size.width * 0.03
                                      ),
                                    )
                                ),

                                //button
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  child: InkWell(
                                    onTap: (){},
                                    child: controller.shield.value == 0
                                        ?const SizedBox.shrink()
                                        :Icon(
                                      Icons.navigate_next,
                                      color: accountItemColors,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //top
                          InkWell(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.055,
                              margin: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.009
                              ),
                              decoration: BoxDecoration(
                                  color: accountItemColors,
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    color: accountItemColors,
                                  )

                              ),
                              child: Row(
                                children: [

                                  //icon
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.15,
                                    child: SvgPicture.asset(
                                        'assets/account/shield.svg',
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        colorFilter: ColorFilter.mode(accountItemInsideColors, BlendMode.srcIn)
                                    ),
                                  ),

                                  //title
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.63,
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context).size.height * 0.005
                                      ),
                                      child: Text(
                                        "امنیت حساب",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.036,
                                            fontWeight: FontWeight.bold,
                                            color: accountItemInsideColors
                                        ),
                                      )
                                  ),

                                  //expand icon
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.1,
                                      child: Icon(
                                        controller.shield.value == 0
                                            ? Icons.expand_more_rounded
                                            : Icons.expand_less_rounded,
                                        color: accountItemInsideColors,
                                      )
                                  ),

                                ],
                              ),
                            ),
                            onTap: (){
                              if(controller.shield.value == 0){
                                controller.shield.value = MediaQuery.of(context).size.height * 0.2;
                              }
                              else{
                                controller.shield.value = 0;
                              }

                            },
                          ),
                        ],
                      );
                    }),

                    //log-out
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.055,
                        margin: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.009
                        ),
                        decoration: BoxDecoration(
                            color: accountBackgroundColorBottom,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: accountItemColors.withOpacity(0.8),
                            )

                        ),
                        child: Row(
                          children: [

                            //icon
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: SvgPicture.asset(
                                  'assets/account/log-out.svg',
                                  height: MediaQuery.of(context).size.height * 0.03,
                                  colorFilter: ColorFilter.mode(accountItemColors, BlendMode.srcIn)
                              ),
                            ),

                            //title
                            Container(
                                width: MediaQuery.of(context).size.width * 0.63,
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height * 0.005
                                ),
                                child: Text(
                                  "خروج از حساب",
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width * 0.036,
                                      fontWeight: FontWeight.bold,
                                      color: accountItemColors
                                  ),
                                )
                            ),

                          ],
                        ),
                      ),
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
                                  'آیا قصد خروج از حساب کاربری خود را دارید ؟',
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
                                        'خیر',
                                        style: TextStyle(
                                            color: const Color(0xFF6902E7),
                                            fontSize: MediaQuery.of(context).size.width * 0.035,
                                        ),
                                      ),
                                    ),

                                  ),

                                  TextButton(

                                    onPressed: (){},

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
                                        'بله',
                                        style: TextStyle(
                                            color: const Color(0xFF6902E7),
                                            fontSize: MediaQuery.of(context).size.width * 0.035
                                        ),
                                      ),
                                    ),

                                  ),

                                ],

                              );
                            }
                        );

                      },
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.11,
                    )

                  ],
                ),
              ),

              //profile image
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.09
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: accountImageBorderColor.withOpacity(0.8),
                        ),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/account/account.jpg'
                        )
                      )
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      )

    );
  }
}
