import 'package:flutter/material.dart';

import 'package:ponisha_app/views/single/single_colors.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';
import '../navigation/pages_topbar_2.dart';

class Single extends StatelessWidget {
  const Single({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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

                  // Items
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03
                    ),
                    child: SingleItems(),
                  ),

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

class SingleItems extends StatelessWidget {
  const SingleItems({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
      children: [

        Positioned(
          width: MediaQuery.of(context).size.width,
          top: 0,
          child: AspectRatio(
            aspectRatio: 4/3,
            child: Image.asset(
              'assets/single/top.jpg'
            ),
          ),
        ),

        DraggableScrollableSheet(
          initialChildSize: 0.75,
          minChildSize: 0.75,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xFF6902E7).withAlpha(1), const Color(0xFF3B0181),],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops:  [
                      0,
                      MediaQuery.of(context).size.height * 0.00004
                    ],
                  )
                ),
                child: Column(
                  children: [

                    //top
                    const SingleTop(),

                    //info
                    const SingleInfo(),

                    const SingleSimilar(),

                    Divider(
                      color: singleText.withOpacity(0.3),
                      endIndent: MediaQuery.of(context).size.width * 0.05,
                      indent: MediaQuery.of(context).size.width * 0.05,
                    ),

                    const SingleComments(),

                  ],
                ),
              ),
            );
          },
        ),

      ],
    );
  }
}

class SingleTop extends StatelessWidget {
  const SingleTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.02
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Show Button
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  color: singleButton.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(26)
              ),
              child: MaterialButton(
                onPressed: () {  },
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(26)
                ),
                child: Text(
                  ' نمایش',
                  style: TextStyle(
                      color: singleButtonText,
                      fontWeight: FontWeight.w700,
                      fontSize: MediaQuery.of(context).size.width * 0.04
                  ),
                ),
              ),
            ),

            //rate
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // name
                  Text(
                    'My_brsand',
                    style: TextStyle(
                        color: const Color(0xFFECF0F3),
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w700
                    ),
                  ),

                  // Rate
                  Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: const Color(0xFFF1F1F1),
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: const Color(0xFFF1F1F1),
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: const Color(0xFFF8C111),
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: const Color(0xFFF8C111),
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        color: const Color(0xFFF8C111),
                        size: MediaQuery.of(context).size.width * 0.06,
                      ),
                    ],
                  )

                ],
              ),
            ),

            // help
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
                                  color: const Color(0xFF02EEFB).withOpacity(0.8)
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(
                      Icons.help_outline_rounded,
                      size: MediaQuery.of(context).size.width * 0.06,
                      color: singleButton,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.height * 0.005
                      ),
                      child: Text(
                        "راهنما",
                        style: TextStyle(
                            color: singleButton,
                            fontSize: MediaQuery.of(context).size.width * 0.04
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

          ],
        )
    );
  }
}

class SingleInfo extends StatelessWidget {
  const SingleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.27,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      decoration: BoxDecoration(
          color:singleInfoBox,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF100D54),
                blurRadius: 40
            )
          ]
      ),
      child: Column(
        children: [

          Text(
            "عنوان",
            style: TextStyle(
                color: singleText,
                fontWeight: FontWeight.w800,
                fontSize: MediaQuery.of(context).size.width * 0.055
            ),
          ),

          Divider(
            color: singleText.withOpacity(0.4),
          ),

          // title
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.002
            ),
            child: Text(
              "عنوان: ویدئو",
              style: TextStyle(
                  color: singleText,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width * 0.035
              ),
            ),
          ),

          // time
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.002
            ),
            child: Text(
              "مدت زمان نمایش: 31 ثانیه",
              style: TextStyle(
                  color: singleText,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width * 0.035
              ),
            ),
          ),

          // Amount
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.002
            ),
            child: Text(
              "تعداد مجاز واریز: 3 بار",
              style: TextStyle(
                  color: singleText,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width * 0.035
              ),
            ),
          ),

          // count
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.002
            ),
            child: Text(
              "تعداد مشاهده شما: 5بار",
              style: TextStyle(
                  color: singleText,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.width * 0.035
              ),
            ),
          ),

          Divider(
            color: singleText.withOpacity(0.4),
          ),

          //income
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.002
            ),
            child: Text(
              "میزان درآمد: 100 تومان",
              style: TextStyle(
                  color: singleText,
                  fontWeight: FontWeight.w800,
                  fontSize: MediaQuery.of(context).size.width * 0.045
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class SingleSimilar extends StatelessWidget {
  const SingleSimilar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.05,
        MediaQuery.of(context).size.height * 0.03,
        MediaQuery.of(context).size.width * 0.05,
        0
      ),
      // padding: EdgeInsets.symmetric(
      //   horizontal: MediaQuery.of(context).size.width * 0.05,
      //   vertical: MediaQuery.of(context).size.height * 0.03,
      // ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'نمونه های مشابه:',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: singleText,
                    fontWeight: FontWeight.w700
                ),
              ),
            ),

            Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.43,
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01,
                          vertical: MediaQuery.of(context).size.height * 0.02
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF100D54),
                            )
                          ],
                          image: DecorationImage(
                              image: AssetImage('assets/single/similar.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    );
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}

class SingleComments extends StatelessWidget {
  const SingleComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //title
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.02
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //title
              Text(
                "نظر شما:",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: singleText,
                    fontWeight: FontWeight.w700
                ),
              ),

              //rate
              Row(
                children: [
                  Icon(
                    Icons.star_border_rounded,
                    color: const Color(0xFFF1F1F1),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: const Color(0xFFF1F1F1),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: const Color(0xFFF8C111),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: const Color(0xFFF8C111),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: const Color(0xFFF8C111),
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                ],
              )

            ],
          ),
        ),

        // TextField and button
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01
            ),
            child: Stack(
              children: [

                TextField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                      color: singleText,
                      fontSize: MediaQuery.of(context).size.width * 0.04
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: singleText.withOpacity(0.4)),
                        borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: singleText),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    hintStyle: TextStyle(
                        color: singleText,
                        fontSize: MediaQuery.of(context).size.width * 0.04
                    ),
                    hintText: "توضیحات مختصر...",
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.06,
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.25,
                        vertical: MediaQuery.of(context).size.height * 0.025
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xFF3ABEF9),
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(
                          color: const Color(0xFFECF0F3).withOpacity(0.2),
                        )
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))
                      ),
                      child: Center(
                        child: Text(
                          "تایید",
                          style: TextStyle(
                              color: singleButtonText,
                              fontSize: MediaQuery.of(context).size.width * 0.04
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        //title
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "آخرین نظرات :",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: singleText,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),

        //comments
        Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.03,
            horizontal: MediaQuery.of(context).size.width * 0.06,
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01
          ),
          decoration: BoxDecoration(
              color:singleCommentBox,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF100D54).withOpacity(0.5),
                    blurRadius: 20
                )
              ]

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //rate
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.11,
                    right: MediaQuery.of(context).size.height * 0.11,
                    bottom: MediaQuery.of(context).size.height * 0.01
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFECF0F3).withOpacity(0.2)
                    ),
                    borderRadius: BorderRadius.circular(26),
                    color: const Color(0xFFECF0F3).withOpacity(0.1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ],
                ),
              ),

              //name
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //name
                    Text(
                      'مهدی زمانی',
                      style: TextStyle(
                          color: singleText,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w300
                      ),
                    ),

                    //date
                    Row(
                      children: [
                        Text(
                          '20:30',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          '1403/03/12',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    )


                  ],

                ),
              ),

              //comment
              Text(
                textAlign: TextAlign.justify,
                "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: singleText
                ),
              ),
            ],
          ),
        ),

        //comments
        Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.03,
            horizontal: MediaQuery.of(context).size.width * 0.06,
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01
          ),
          decoration: BoxDecoration(
              color:singleCommentBox,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF100D54).withOpacity(0.5),
                    blurRadius: 20
                )
              ]

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //rate
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.11,
                    right: MediaQuery.of(context).size.height * 0.11,
                    bottom: MediaQuery.of(context).size.height * 0.01
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFECF0F3).withOpacity(0.2)
                    ),
                    borderRadius: BorderRadius.circular(26),
                    color: const Color(0xFFECF0F3).withOpacity(0.1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ],
                ),
              ),

              //name
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //name
                    Text(
                      'مهدی زمانی',
                      style: TextStyle(
                          color: singleText,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w300
                      ),
                    ),

                    //date
                    Row(
                      children: [
                        Text(
                          '20:30',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          '1403/03/12',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    )


                  ],

                ),
              ),

              //comment
              Text(
                textAlign: TextAlign.justify,
                "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکار",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: singleText
                ),
              ),
            ],
          ),
        ),

        //comments
        Container(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.03,
            horizontal: MediaQuery.of(context).size.width * 0.06,
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01
          ),
          decoration: BoxDecoration(
              color:singleCommentBox,
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF100D54).withOpacity(0.5),
                    blurRadius: 20
                )
              ]

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //rate
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.11,
                    right: MediaQuery.of(context).size.height * 0.11,
                    bottom: MediaQuery.of(context).size.height * 0.01
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFECF0F3).withOpacity(0.2)
                    ),
                    borderRadius: BorderRadius.circular(26),
                    color: const Color(0xFFECF0F3).withOpacity(0.1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: const Color(0xFFF1F1F1),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF8C111),
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ],
                ),
              ),

              //name
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //name
                    Text(
                      'مهدی زمانی',
                      style: TextStyle(
                          color: singleText,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w300
                      ),
                    ),

                    //date
                    Row(
                      children: [
                        Text(
                          '20:30',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          '1403/03/12',
                          style: TextStyle(
                              color: singleText,
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    )


                  ],

                ),
              ),

              //comment
              Text(
                textAlign: TextAlign.justify,
                "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: singleText
                ),
              ),
            ],
          ),
        ),

        MaterialButton(
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'نمایش نظرات',
                style: TextStyle(
                    color: singleText,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.width * 0.035
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Icon(
                Icons.expand_more_rounded,
                color: singleText,
                size: MediaQuery.of(context).size.width * 0.05,
              )
            ],
          ),
        )

      ],
    );
  }
}
