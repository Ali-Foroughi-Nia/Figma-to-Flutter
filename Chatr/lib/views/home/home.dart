import 'package:flutter/material.dart';
import 'package:ponisha_app/views/home/awards.dart';
import 'package:ponisha_app/views/home/best_apps.dart';
import 'package:ponisha_app/views/home/top_banner.dart';
import 'package:ponisha_app/views/home/videos.dart';

import 'fix_banner_1.dart';
import 'fix_banner_2.dart';
import 'news.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [

            // Top Banner
            const TopBanner(),

            // Videos
            const Videos(),

            // Fixed Banner
            const FixBanner1(),

            // Best App
            const BestApps(),

            // Fixed Banner
            const FixBanner2(),

            //News
            const News(),

            // Awards
            const Awards(),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            )

          ],
        ),
      ),
    );
  }
}
