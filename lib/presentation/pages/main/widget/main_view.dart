import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/update/update_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/customs/eta_bottom_sheet.dart';
import 'package:tms_driver/presentation/pages/home/home_page.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_list_view.dart';
import 'package:tms_driver/presentation/pages/profile/widget/profile_view.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_list_view.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, this.tripId, this.isNewTrip});

  final bool? isNewTrip;
  final int? tripId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).canvasColor,
        appBar: const CustomAppBar(),
        extendBody: true,
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            if (!state.isConnected) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: const Text('No internet connection'),
                    backgroundColor: Colors.redAccent,
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text(
                          'DISMISS',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              });
            } else {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              });
            }
            if (isNewTrip != null && isNewTrip! && tripId != null) {
              context.read<MainBloc>().add(
                  const MainEvent.updateSelectedPage(MainPageEnum.trips, 1));
            }

            if (isNewTrip != null && !isNewTrip!) {
              context.read<MainBloc>().add(
                  const MainEvent.updateSelectedPage(MainPageEnum.trips, 2));
            }
            switch (state.selectedPage) {
              case MainPageEnum.home:
                return const HomePage();
              case MainPageEnum.trips:
                return TripListView(
                  tabPage: state.tabPage,
                  tripId: tripId,
                  showETABS: isNewTrip != null ? !isNewTrip! : false,
                );
              case MainPageEnum.messages:
                return const MessageListView();
              case MainPageEnum.profile:
                return const ProfileView();
            }
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<TripDetailBloc, TripDetailState>(
                builder: (context, tripState) {
              final isActiveTrip = tripState.trip != null;

              return FloatingActionButton(
                elevation: 2,
                onPressed: isActiveTrip
                      ? () async {
                          final localizations = context.localizations;

                          final result =
                              await showModalBottomSheet<Map<String, dynamic>>(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext bottomSheetContext) {
                              return Padding(
                                padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                child: ETABottomSheet(
                                  trip: tripState.trip!,
                                  onConfirmPressed: (
                                    int? etaTimestamp,
                                    String? comment,
                                    String type,
                                  ) {
                                    Navigator.pop(bottomSheetContext, {
                                      'etaTimestamp': etaTimestamp,
                                      'comment': comment,
                                      'type': type,
                                    });
                                  },
                                  title: state.isDriveStarted
                                      ? localizations.pause
                                      : localizations.startDriving,
                                  type: state.isDriveStarted
                                      ? 'stopped_moving'
                                      : 'started_moving',
                                ),
                              );
                            },
                          );
                          if (result != null && context.mounted) {
                            final etaTimestamp = result['etaTimestamp'] as int?;
                            final comment = result['comment'] as String?;
                            final type = result['type'] as String;

                            context.read<UpdateBloc>().add(
                                  UpdateEvent.sendUpdate(
                                    etaTimestamp: etaTimestamp,
                                    comment: comment,
                                    tripId: tripState.trip!.id,
                                    type: type,
                                  ),
                                );
                            context.read<MainBloc>().add(
                                  MainEvent.updateDriveButton(
                                    etaTimestamp: etaTimestamp,
                                    comment: comment,
                                    id: tripState.trip!.id,
                                    type: type,
                                  ),
                                );
                          }
                        }
                      //   int? etaTimestamp, String? comment, String type
                      : null,
                backgroundColor:
                    isActiveTrip ? Theme.of(context).cardColor : Colors.grey,
                child:
                    BlocBuilder<MainBloc, MainState>(builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/${state.isDriveStarted ? 'pause' : 'play'}.svg',
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        state.isDriveStarted ? 'Pause' : 'Drive',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  );
                    },
                  ),
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: CustomPaint(
          painter: BottomNavBarPainter(),
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(context, 'home', 'Home', MainPageEnum.home),
                _buildNavItem(context, 'point', 'Trips', MainPageEnum.trips),
                const SizedBox(width: 40),
                _buildNavItem(
                    context, 'message', 'Messages', MainPageEnum.messages),
                _buildProfileNavItem(context),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildNavItem(
      BuildContext context, String iconName, String label, MainPageEnum page) {
    final theme = Theme.of(context);
    final isSelected = context.watch<MainBloc>().state.selectedPage == page;
    final color = isSelected ? theme.primaryColor : theme.shadowColor;
    final fontWeight = isSelected ? FontWeight.w500 : FontWeight.w400;

    return GestureDetector(
      onTap: () => context.read<MainBloc>().add(MainEvent.pageChanged(page)),
      child: SizedBox(
        width: 68,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 22,
              height: 22,
              child: SvgPicture.asset(
                'assets/images/$iconName.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileNavItem(BuildContext context) {
    final theme = Theme.of(context);
    final isSelected =
        context.watch<MainBloc>().state.selectedPage == MainPageEnum.profile;
    final color = isSelected ? theme.primaryColor : theme.shadowColor;
    final fontWeight = isSelected ? FontWeight.w600 : FontWeight.w400;
    const localPhotoPath =
        '/data/user/0/com.example.tms_driver/app_flutter/user_photo.jpg';
    final localPhotoFile = File(localPhotoPath);

    return GestureDetector(
      onTap: () => context
          .read<MainBloc>()
          .add(const MainEvent.pageChanged(MainPageEnum.profile)),
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state.status == UserStatus.loading) {
                  return CircularProgressIndicator(
                    color: color,
                    strokeWidth: 2,
                  );
                }
                if (state.status == UserStatus.loaded) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox(
                            width: 22,
                            height: 22,
                            child: Image.network(
                              state.user!.photo!,
                              fit: BoxFit.cover,
                              width: 22,
                              height: 22,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.file(
                                  localPhotoFile,
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.person,
                                      size: 22,
                                      color: Colors.grey[400],
                                    );
                                  },
                                );
                              },
                            )),
                      ),
                      Text(
                        state.user!.firstName,
                        style: TextStyle(
                          color: color,
                          fontWeight: fontWeight,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 0);

    path.lineTo(size.width * 0.35, 0);

    path.quadraticBezierTo(
      size.width * 0.4,
      0,
      size.width * 0.4,
      25,
    );

    path.arcToPoint(
      Offset(size.width * 0.6, 27),
      radius: const Radius.circular(33.0),
      clockwise: false,
    );

    path.quadraticBezierTo(
      size.width * 0.6,
      0,
      size.width * 0.65,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
