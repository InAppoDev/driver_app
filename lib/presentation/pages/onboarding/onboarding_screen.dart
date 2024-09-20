import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tms_driver/presentation/customs/custom_check_box.dart';
import 'package:tms_driver/presentation/pages/onboarding/onboarding_content.dart';
import 'package:tms_driver/presentation/pages/onboarding/size_config.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class OnboardingScreen extends StatefulWidget {
  final VoidCallback onCompleted;

  const OnboardingScreen({
    super.key,
    required this.onCompleted,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  bool isLocationPermission = false;
  bool isNotificationPermission = false;
  // bool isStoragePermission = false;

  String permissionStatus = "Press the button to request permission";
  int _currentPage = 0;
  List colors = const [
    AppColors.palePink,
    AppColors.white,
    AppColors.whiteGray,
  ];

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  Future<void> requestLocationPermission() async {
    if (isLocationPermission) {
      await Permission.location.request();
    } else {
      PermissionStatus status = await Permission.location.request();
      setState(() {
        isLocationPermission = status.isGranted;
      });
    }
  }

  Future<void> requestNotificationPermission() async {
    if (isNotificationPermission) {
      await Permission.notification.request();
    } else {
      PermissionStatus status = await Permission.notification.request();
      setState(() {
        isNotificationPermission = status.isGranted;
      });
    }
  }

  bool isAllPermissionsGranted() {
    return isLocationPermission && isNotificationPermission;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            _buildPageView(context, height, width, theme),
            _buildBottomNavigation(theme, width),
          ],
        ),
      ),
    );
  }

  Expanded _buildPageView(
      BuildContext context, double height, double width, ThemeData theme) {
    return Expanded(
      flex: 3,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        onPageChanged: (value) => setState(() => _currentPage = value),
        itemCount: contents(context).length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: _currentPage == 2
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
              children: [
                Image.asset(
                  contents(context)[i].image,
                  height: SizeConfig.blockV! * 5,
                ),
                SizedBox(
                  height: (height >= 840) ? 60 : 30,
                ),
                Text(
                  contents(context)[i].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                    fontSize: (width <= 550) ? 30 : 35,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  contents(context)[i].desc,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w300,
                    fontSize: (width <= 550) ? 17 : 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (_currentPage == 2) ...[
                  const SizedBox(height: 100),
                  _buildPermissionsContainer(theme, width, context),
                ]
              ],
            ),
          );
        },
      ),
    );
  }

  Container _buildPermissionsContainer(
      ThemeData theme, double width, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme.secondaryHeaderColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Location Permission',
                style: theme.textTheme.headlineMedium!.copyWith(
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w400,
                  fontSize: (width <= 550) ? 17 : 23,
                ),
              ),
              CustomCheckBox(
                value: isLocationPermission,
                onChanged: (value) {
                  requestLocationPermission();
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notification Permission',
                style: theme.textTheme.headlineMedium!.copyWith(
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w400,
                  fontSize: (width <= 550) ? 17 : 23,
                ),
              ),
              CustomCheckBox(
                value: isNotificationPermission,
                onChanged: (value) {
                  requestNotificationPermission();
                },
              ),
            ],
          ),
          // const SizedBox(height: 8),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       'Storage Permission',
          //       style: theme.textTheme.headlineMedium!.copyWith(
          //         fontFamily: "Mulish",
          //         fontWeight: FontWeight.w400,
          //         fontSize: (width <= 550) ? 17 : 23,
          //       ),
          //     ),
          //     CustomCheckBox(
          //       value: isStoragePermission,
          //       onChanged: (value) {
          //         requestStoragePermission();
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Expanded _buildBottomNavigation(ThemeData theme, double width) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents(context).length,
              (int index) => _buildDots(context: context, index: index),
            ),
          ),
          _currentPage + 1 == contents(context).length
              ? Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed:
                        isAllPermissionsGranted() ? widget.onCompleted : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      disabledBackgroundColor: theme.hintColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: (width <= 550)
                          ? const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20)
                          : EdgeInsets.symmetric(
                              horizontal: width * 0.2, vertical: 25),
                      textStyle: theme.textTheme.titleLarge!
                          .copyWith(fontSize: (width <= 550) ? 13 : 17),
                    ),
                    child: Text(
                      context.localizations.start,
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        style: TextButton.styleFrom(
                          elevation: 0,
                          textStyle: theme.textTheme.labelSmall!.copyWith(
                            fontSize: (width <= 550) ? 13 : 17,
                          ),
                        ),
                        child: Text(
                          context.localizations.skip,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          elevation: 0,
                          padding: (width <= 550)
                              ? const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20)
                              : const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 25),
                          textStyle: theme.textTheme.titleLarge!.copyWith(
                            fontSize: (width <= 550) ? 13 : 17,
                          ),
                        ),
                        child: Text(
                          context.localizations.next,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  AnimatedContainer _buildDots({
    int? index,
    required BuildContext context,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: Theme.of(context).primaryColor,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }
}
