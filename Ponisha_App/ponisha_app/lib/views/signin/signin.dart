import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ponisha_app/views/signin/signin_color.dart';

import '../../controllers/account_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {

    final AccountController controller = Get.put(AccountController());

    return SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            // resizeToAvoidBottomInset: false,
            body: DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6902E7),
                    Color(0xFF3B0181),
                  ],
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      // logo
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.015
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Image.asset(
                            'assets/images/logo.png'
                          ),
                        ),
                      ),

                      // name
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.015,
                          horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: signInTextFieldText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: signInTextField.withOpacity(0.8),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.03
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color(0xFF02EEFB).withOpacity(0.8)),
                                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                              ),
                              hintStyle: TextStyle(
                                  color: signInTextFieldText.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                              hintText: "نام",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: SvgPicture.asset(
                                    'assets/signin/name.svg',
                                    colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // counter
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.15
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '0/20',
                            style: TextStyle(
                              color: signInTextFieldText
                            ),
                          ),
                        ),
                      ),

                      // family
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: signInTextFieldText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: signInTextField.withOpacity(0.8),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.03
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color(0xFF02EEFB).withOpacity(0.8)),
                                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                              ),
                              hintStyle: TextStyle(
                                  color: signInTextFieldText.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                              hintText: "نام خانوادگی",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: SvgPicture.asset(
                                    'assets/signin/name.svg',
                                    colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // counter
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.15
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '0/20',
                            style: TextStyle(
                                color: signInTextFieldText
                            ),
                          ),
                        ),
                      ),

                      // phone
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: signInTextFieldText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: signInTextField.withOpacity(0.8),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.03
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color(0xFF02EEFB).withOpacity(0.8)),
                                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                              ),
                              hintStyle: TextStyle(
                                  color: signInTextFieldText.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                              hintText: "شماره همراه",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: SvgPicture.asset(
                                    'assets/signin/smartphone.svg',
                                    colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // password 1
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: signInTextFieldText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: signInTextField.withOpacity(0.8),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.03
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color(0xFF02EEFB).withOpacity(0.8)),
                                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                              ),
                              hintStyle: TextStyle(
                                  color: signInTextFieldText.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                              hintText: "رمز عبور",
                              suffixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: SvgPicture.asset(
                                    'assets/signin/eye.svg',
                                    colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                ),
                                child: Image.asset(
                                    'assets/signin/Password.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // password 2
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                                color: signInTextFieldText,
                                fontSize: MediaQuery.of(context).size.width * 0.04
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: signInTextField.withOpacity(0.8),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.03
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                  borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: const Color(0xFF02EEFB).withOpacity(0.8)),
                                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                              ),
                              hintStyle: TextStyle(
                                  color: signInTextFieldText.withOpacity(0.7),
                                  fontSize: MediaQuery.of(context).size.width * 0.04
                              ),
                              hintText: "تکرار رمز عبور",
                              suffixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: SvgPicture.asset(
                                    'assets/signin/eye-off.svg',
                                    colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: MediaQuery.of(context).size.width * 0.01,
                                ),
                                child: Image.asset(
                                  'assets/signin/Password.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // link
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                    color: signInTextFieldText,
                                    fontSize: MediaQuery.of(context).size.width * 0.04
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: signInTextField.withOpacity(0.8),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: MediaQuery.of(context).size.width * 0.03
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: signInTextFieldBorder.withOpacity(0.5)),
                                      borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFF02EEFB).withOpacity(0.8)),
                                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                  ),
                                  hintStyle: TextStyle(
                                      color: signInTextFieldText.withOpacity(0.7),
                                      fontSize: MediaQuery.of(context).size.width * 0.04
                                  ),
                                  hintText: "کد معرفی",
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    child: SvgPicture.asset(
                                        'assets/signin/link.svg',
                                        colorFilter: ColorFilter.mode(const Color(0x00ecf0f3).withOpacity(0.8), BlendMode.srcIn)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
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
                                                  color: const Color(0xFF02EEFB).withOpacity(0.8)
                                              ),
                                              child: Text(
                                                'تایید',
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
                              icon: Icon(
                                Icons.help_outline_rounded,
                                color: signInTextFieldText.withOpacity(0.7),
                                size: MediaQuery.of(context).size.width * 0.06,
                              )
                            )
                          ],
                        ),
                      ),

                      // conditions
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Obx(() => SizedBox(
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  side: BorderSide(color: const Color(0xFF0BD6F6).withOpacity(0.8)),
                                  checkColor: const Color(0xFF333085),
                                  activeColor: const Color(0xFF0BD6F6).withOpacity(0.8),
                                  value: controller.signIn.value,
                                  onChanged: (val) {
                                    controller.signIn.value = val!;
                                  }
                              ),
                            )),

                            MaterialButton(
                              onPressed: (){},
                              child: Text(
                                "قوانین را میپذیرم.",
                                style: TextStyle(
                                  color: signInTextFieldText,
                                  fontSize: MediaQuery.of(context).size.width * 0.035
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Button
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.015,
                            horizontal: MediaQuery.of(context).size.width * 0.1
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            color: signInButton.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(26),
                          ),
                          child: MaterialButton(
                            onPressed: (){},
                            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(26)),
                            child: Text(
                              "تایید",
                              style: TextStyle(
                                color: const Color(0xFF332E82),
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
