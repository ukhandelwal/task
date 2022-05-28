import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sunarc/utils/GetColor.dart';
import 'package:sunarc/utils/GetImage.dart';
import 'package:sunarc/utils/GetString.dart';
import 'package:sunarc/widget/TextMedium.dart';
import 'package:sunarc/widget/text_large.dart';
import 'package:sunarc/widget/text_small.dart';

class HomePageNEW extends StatelessWidget {
  const HomePageNEW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            GetColor.lightBlueColor300,
            GetColor.blueColor600,
          ],
        )),
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Get.height * 0.65,
                decoration: const BoxDecoration(
                    color: GetColor.whiteColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(250))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Get.height * 0.02),
              margin: EdgeInsets.only(top: Get.height * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextLarge(
                                  name: GetString.namaskarStr,
                                  fontWeight: FontWeight.w900,
                                  fontSize: Get.height * 0.03,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                TextLarge(
                                  name: GetString.nameStr,
                                  fontSize: Get.height * 0.03,
                                  fontWeight: FontWeight.w300,
                                ),
                              ],
                            ),
                            TextMedium(
                              name: GetString.hereIsYourRecentUpdate,
                              fontWeight: FontWeight.w400,
                              fontSize: Get.height * 0.02,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: Get.height * 0.04,
                          height: Get.height * 0.04,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 1,
                                top: 5,
                                bottom: 0,
                                child: Image.asset(
                                  GetImages.notificationImage,
                                  width: Get.height * 0.03,
                                ),
                              ),
                              Positioned(
                                top: 8,
                                left: 0,
                                bottom: 5,
                                child: Container(
                                  padding: EdgeInsets.all(Get.height * 0.006),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              GetImages.background))),
                                  child: TextSmall(
                                    name: '03',
                                    fontSize: Get.height * 0.012,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    child: TextMedium(
                      name: GetString.todayAppointment,
                      fontWeight: FontWeight.w400,
                      fontSize: Get.height * 0.02,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  SizedBox(
                    height: Get.height * 0.15,
                    child: ListView.builder(
                      itemCount: 2,
                      padding: const EdgeInsets.only(left: 30),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30),
                          width: Get.width * 0.78,
                          decoration: BoxDecoration(
                              color: GetColor.whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(4),
                                width: Get.width * 0.25,
                                decoration: BoxDecoration(
                                    color: index == 0
                                        ? GetColor.blueColor700
                                        : GetColor.redColor,
                                    borderRadius: BorderRadius.circular(20)),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    TextMedium(
                                      name: "2020",
                                      fontWeight: FontWeight.w300,
                                    ),
                                    TextLarge(
                                      name: "24",
                                      fontWeight: FontWeight.w900,
                                    ),
                                    TextMedium(
                                      name: "JAN",
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  TextMedium(
                                    name: "ID: 383737",
                                    color: GetColor.greyColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  TextLarge(
                                    name: "03:00 PM",
                                    fontWeight: FontWeight.w900,
                                    color: GetColor.blackColor,
                                  ),
                                  TextMedium(
                                    name: "Remain Time: 03:44:22",
                                    color: GetColor.blackColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    height: Get.height * 0.27,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: Get.height * 0.23,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: GetColor.whiteColor,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2.0, 2.0), //(x,y)
                                  blurRadius: 20.0,
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(Get.height * 0.02),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextLarge(
                                  name: GetString.days4,
                                  color: GetColor.blueColor800,
                                  fontWeight: FontWeight.w900,
                                  fontSize: Get.height * 0.03,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                TextMedium(
                                  name: GetString.treatmentPlan,
                                  color: GetColor.blackColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: Get.height * 0.02,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      GetImages.calendarIcon,
                                      height: Get.height * 0.02,
                                      width: Get.height * 0.02,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    TextMedium(
                                      name: "Start from: 24 Jan 2020",
                                      color: GetColor.blackColor,
                                      fontSize: Get.height * 0.02,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.015,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextMedium(
                                        name: GetString.days2,
                                        color: GetColor.blackColor,
                                        fontSize: Get.height * 0.02,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                LinearPercentIndicator(
                                  lineHeight: Get.height * 0.015,
                                  percent: 0.5,
                                  barRadius: const Radius.circular(50),
                                  backgroundColor: GetColor.greyColor50,
                                  linearGradient: const LinearGradient(
                                    colors: [
                                      GetColor.progress300,
                                      GetColor.progress600,
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextMedium(
                                        name: "0",
                                        color: GetColor.greyColor100,
                                        fontSize: Get.height * 0.015,
                                      ),
                                      Wrap(
                                        children: [
                                          for (int i = 0; i < 20; i++)
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 4, left: 4),
                                              height: Get.height * 0.01,
                                              width: Get.height * 0.004,
                                              color: GetColor.greyColor50,
                                            )
                                        ],
                                      ),
                                      TextMedium(
                                        name: "40",
                                        fontSize: Get.height * 0.015,
                                        color: GetColor.greyColor100,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            child: Image.asset(
                              GetImages.runPerson,
                              scale: 4,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    height: Get.height * 0.12,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: Get.height * 0.10,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: GetColor.orangeDarkColor,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextLarge(
                                      name: GetString.schedule,
                                      fontWeight: FontWeight.w900,
                                      fontSize: Get.height * 0.02,
                                    ),
                                    TextMedium(
                                      name: GetString.moresession,
                                      fontWeight: FontWeight.w300,
                                      fontSize: Get.height * 0.015,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Image.asset(
                                  GetImages.addIcon,
                                  width: Get.height * 0.025,
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            left: 10,
                            top: -1,
                            bottom: 3,
                            child: Image.asset(
                              GetImages.doctorIcon,
                              height: Get.height * 0.10,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 30),
                    child: TextLarge(
                      name: GetString.todayExercise,
                      color: GetColor.blackColor,
                      fontSize: Get.height * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  SizedBox(
                    height: Get.height * 0.18,
                    child: ListView.builder(
                      itemCount: 2,
                      padding: EdgeInsets.only(
                          left: 30, bottom: Get.height * 0.00001),
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30),
                          width: Get.width * 0.78,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: [
                                Image.asset(
                                  width: Get.width,
                                  GetImages.yogoImage,
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        GetColor.blueColor900.withOpacity(0.55),
                                        GetColor.blueColor950.withOpacity(0.55),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 15,
                                  child: TextMedium(
                                    name: GetString.name,
                                    fontSize: Get.height * 0.025,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 15,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        GetImages.timeIcon,
                                        width: Get.height * 0.02,
                                        height: Get.height * 0.02,
                                      ),
                                      SizedBox(
                                        width: Get.height * 0.01,
                                      ),
                                      TextMedium(
                                        name: "18 min",
                                        fontSize: Get.height * 0.015,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  right: 25,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        GetImages.playIcon,
                                        width: Get.height * 0.03,
                                        height: Get.height * 0.03,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
