import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/texts/app_large_text.dart';

import '../widgets/texts/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(text: "mountain", size: 30),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 250,
                              child: AppText(
                                text:
                                    "Mountain hiking gives you an incridable sence of freedom along with endurance test.",
                                color: AppColors.textColor2,
                                size: 16,
                              ))
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexSlider) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexSlider ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexSlider
                                    ? AppColors.mainColor
                                    : AppColors.mainColor.withOpacity(0.3)),
                          );
                        }),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
