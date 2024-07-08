import 'package:flutter/material.dart';

import '../components/gradiant_border.dart';

class FixBanner1 extends StatelessWidget {
  const FixBanner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.285,
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.03,
        MediaQuery.of(context).size.height * 0.03,
        MediaQuery.of(context).size.width * 0.03,
        MediaQuery.of(context).size.height * 0.03
      ),
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              border: GradientBorder(
                borderGradient: LinearGradient(
                  colors: [
                    const Color(0xFFFFFFFF).withOpacity(0.16),
                    const Color(0xFFFFFFFF).withOpacity(0.8),
                  ],
                  tileMode: TileMode.repeated,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: const [0.0, 1.0],
                  transform: const GradientRotation(0.0),
                ),
                width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [BoxShadow(
              color: Color(0xFF100D54),
              blurRadius: 20
            )]
          ),
          child: InkWell(
            child: Image.asset(
              'assets/images/other/fix_banner_1.png',
              fit: BoxFit.cover,
            ),
            onTap: (){},
          ),
        ),
      ),
    );
  }
}
