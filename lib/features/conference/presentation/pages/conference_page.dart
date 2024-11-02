import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gtv/core/generator/icons/icons.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';

class ConferencePage extends StatelessWidget {
  const ConferencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              bagroundColor: AppColors.blackColor,
              center: Text(
                "مؤتمر جديد",
                style: AppTextStyles.medium.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.activeColor,
                ),
                onPressed: () {},
              ),
              action: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: AppColors.activeColor,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: -4),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "assets/image/pxfuel.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(children: [
                          Text(
                            ".. : ..",
                            style: AppTextStyles.medium
                                .copyWith(color: AppColors.inactiveColor),
                          ),
                          const Spacer(),
                          Text(
                            "يمكنك اضافة 5 اعضاء  علي الاكثر",
                            style: AppTextStyles.medium
                                .copyWith(color: AppColors.inactiveColor),
                          ),
                        ]),
                        const Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: SizedBox()),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AddUserToConferance(),
                                    AddUserToConferance(),
                                    AddUserToConferance(),
                                  ],
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AddUserToConferance(),
                                    AddUserToConferance(),
                                    AddUserToConferance(),
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ConferanceOptions(
                                title: "مكبر الصوت",
                                svgIcon: IconsAssets.voiceUp,
                                active: true,
                              ),
                              ConferanceOptions(
                                title: "انتظار",
                                svgIcon: IconsAssets.pause,
                                active: false,
                              ),
                              ConferanceOptions(
                                title: "صامت",
                                svgIcon: IconsAssets.micOff,
                                active: true,
                              ),
                              ConferanceOptions(
                                title: "مسح",
                                svgIcon: IconsAssets.delete,
                                active: false,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.call_end,
                                  color: AppColors.whiteColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  " انهاء",
                                  style: AppTextStyles.medium
                                      .copyWith(color: AppColors.whiteColor),
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
            )
          ],
        ),
      ),
    );
  }
}

class AddUserToConferance extends StatelessWidget {
  const AddUserToConferance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: AppColors.activeColor,
          )),
      child: CircleAvatar(
        radius: 35.responsiveWidth,
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.add,
          size: 30.responsiveFontSize,
          color: AppColors.activeColor,
        ),
      ),
    );
  }
}

class ConferanceOptions extends StatelessWidget {
  const ConferanceOptions({
    super.key,
    required this.title,
    required this.svgIcon,
    required this.active,
  });
  final String title, svgIcon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          svgIcon,
          height: 30.responsiveHeight,
          colorFilter: ColorFilter.mode(
            active ? AppColors.whiteColor : AppColors.inactiveColor,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: AppTextStyles.medium.copyWith(
              color: active ? AppColors.whiteColor : AppColors.inactiveColor),
        ),
      ],
    );
  }
}
