import 'package:flutter/material.dart';
import 'package:ponisha_app/views/chat/chat_color.dart';
import 'package:ponisha_app/views/navigation/pages_topbar_2.dart';

import '../components/background.dart';
import '../navigation/Drawer.dart';
import '../navigation/pages_topbar.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            // resizeToAvoidBottomInset : false,
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

                  SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Background()
                  ),

                  // Items
                  ChatItems(),

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

class ChatItems extends StatelessWidget {
  const ChatItems({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        // messages
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.72,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  if(index % 2 == 0){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.01,
                        MediaQuery.of(context).size.width * 0.3,
                        MediaQuery.of(context).size.height * 0.01,
                      ),
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.02,
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent[100],
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 20
                          )
                        ]
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ویدئو",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width* 0.04,
                          color: chatText
                        ),
                      ),
                    );
                  }
                  if(index % 2 != 0){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.3,
                        MediaQuery.of(context).size.height * 0.01,
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.01,
                      ),
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.02,
                        MediaQuery.of(context).size.width * 0.04,
                        MediaQuery.of(context).size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 20
                            )
                          ]
                      ),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "ویدئو",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width* 0.04,
                          color: chatText,
                        ),
                      ),
                    );
                  }
                  return null;
                },
              ),
            ),
        ),

        //textField
        Positioned(
          bottom: 0,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                  vertical: MediaQuery.of(context).size.height * 0.01
                ),
                child: TextField(
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                      color: chatInputText,
                      fontSize: MediaQuery.of(context).size.width * 0.04
                  ),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: chatInputBorder.withOpacity(0.4)),
                        borderRadius: const BorderRadius.all(Radius.circular(25.0))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: chatInputBorder),
                      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    hintStyle: TextStyle(
                        color: chatInputText,
                        fontSize: MediaQuery.of(context).size.width * 0.04
                    ),
                    hintText: "پیام",
                  ),
                ),
              ),
            ],
          )
        ),

        //button
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.25
                ),
                decoration: BoxDecoration(
                  color: chatSubmitButton,
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
                        color: chatSubmitButtonText,
                        fontSize: MediaQuery.of(context).size.width * 0.04
                      ),
                    ),
                  ),
                ),
              ),
            )
        ),

      ],
    );
  }
}
