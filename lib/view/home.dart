import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sunarc/utils/GetColor.dart';
import 'package:sunarc/utils/GetImage.dart';
import 'package:sunarc/utils/GetString.dart';
import 'package:sunarc/widget/TextMedium.dart';
import 'package:sunarc/widget/text_large.dart';
import 'package:sunarc/widget/text_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                height: Get.height * 0.7,
                decoration: const BoxDecoration(
                    color: GetColor.whiteColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(250))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              margin: const EdgeInsets.only(top: 20),
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
                              children: const [
                                TextLarge(
                                  name: GetString.namaskarStr,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                TextLarge(
                                  name: GetString.nameStr,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300,
                                ),
                              ],
                            ),
                            const TextMedium(
                              name: GetString.hereIsYourRecentUpdate,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 35,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 1,
                                bottom: 0,
                                child: Image.asset(
                                  GetImages.notificationImage,
                                  width: 24,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              GetImages.background))),
                                  child: const TextSmall(
                                    name: '03',
                                    color: GetColor.redColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 30, left: 30),
                            child: TextMedium(
                              name: GetString.todayAppointment,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: Get.height*0.15,
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
                                        width: Get.width*0.25,
                                        decoration: BoxDecoration(
                                            color: index == 0
                                                ? GetColor.blueColor700
                                                : GetColor.redColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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

                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 30, left: 30),
                            height: Get.height*0.3,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: Get.height*0.26,
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
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const TextLarge(
                                          name: GetString.days4,
                                          color: GetColor.blueColor800,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const TextMedium(
                                          name: GetString.treatmentPlan,
                                          color: GetColor.blackColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              GetImages.calendarIcon,
                                              width: 20,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const TextMedium(
                                              name: "Start from: 24 Jan 2020",
                                              color: GetColor.blackColor,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Expanded(
                                              child: TextMedium(
                                                name: GetString.days2,
                                                color: GetColor.blackColor,
                                                textAlign: TextAlign.center,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        LinearPercentIndicator(
                                          lineHeight: 10.0,
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
                                              horizontal: 10.0, vertical: 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const TextMedium(
                                                name: "0",
                                                color: GetColor.greyColor100,
                                              ),
                                              Wrap(
                                                children: [
                                                  for (int i = 0; i < 10; i++)
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 4, left: 4),
                                                      height: 10,
                                                      width: 4,
                                                      color:
                                                          GetColor.greyColor50,
                                                    )
                                                ],
                                              ),
                                              const TextMedium(
                                                name: "40",
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
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 30, left: 30),
                            height: Get.height*0.12,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: Get.height*0.12,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: GetColor.orangeDarkColor,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    padding: const EdgeInsets.all(20),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            TextLarge(
                                              name: GetString.schedule,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            TextMedium(
                                              name: GetString.moresession,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          GetImages.addIcon,
                                          width: 24,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                    left: 5,
                                    bottom: -1,
                                    child: Image.asset(
                                      GetImages.doctorIcon,
                                      scale: 5,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 30, left: 30),
                            child: TextLarge(
                              name: GetString.todayExercise,
                              color: GetColor.blackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: Get.height*0.25,
                            child: ListView.builder(
                              itemCount: 2,
                              padding: const EdgeInsets.only(left: 30,bottom: 10),
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 30),
                                  width: Get.width * 0.78,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
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
                                                GetColor.blueColor900
                                                    .withOpacity(0.55),
                                                GetColor.blueColor950
                                                    .withOpacity(0.55),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 20,
                                          left: 15,
                                          child: TextMedium(
                                            name: GetString.name,
                                            fontSize: 24,
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
                                                width: 18,
                                                height: 18,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const TextMedium(
                                                name: "18 min",
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
                                                width: 24,
                                                height: 24,
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
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
