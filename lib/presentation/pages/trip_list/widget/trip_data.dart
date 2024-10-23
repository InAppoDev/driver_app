import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';
import 'package:tms_driver/presentation/utils/extension/waypoint_type.dart';
import 'package:collection/collection.dart';

class TripData extends StatelessWidget {
  const TripData({
    super.key,
    required this.trip,
  });

  final DispatchModel trip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: theme.scaffoldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              trip.waypoints.first.type.icon,
                              height: 15,
                              colorFilter: const ColorFilter.mode(
                                AppColors.success,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 15),
                              Text(
                              trip.waypoints.first.typeTitle,
                              style: theme.textTheme.titleSmall!.copyWith(
                                color: AppColors.success,
                              ),
                            ),
                            if (trip.startedMovingTimestamp != null)
                                CustomDateWidget(
                                  date: trip.startedMovingTimestamp!,
                                ),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      trip.waypoints.first.address,
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: theme.dividerColor),
                    ),
                    const SizedBox(height: 10),
                    if (trip.nextWaypoint != null) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                          children: [
                            SvgPicture.asset(
                                trip.nextWaypoint!.type.icon,
                                colorFilter: ColorFilter.mode(
                                  theme.secondaryHeaderColor,
                                  BlendMode.srcIn,
                                ),
                                height: 12,
                              ),
                            const SizedBox(width: 5),
                            Text(
                                trip.nextWaypoint!.typeTitle,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  color: theme.secondaryHeaderColor,
                                ),
                              ),
                          ],
                        ),
                        if (trip.nextEtaTimestamp != null)
                          CustomDateWidget(
                            date: trip.nextEtaTimestamp!,
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                        trip.nextWaypoint!.address,
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: theme.dividerColor),
                      ),
                    ],
                  ],
                ),
              ),
              BlocBuilder<TripDetailBloc, TripDetailState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      AnimatedSize(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        child: state.areStopsVisible
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  children: [
                                    ...trip.waypoints.skip(1).mapIndexed(
                                      (index, waypoint) {
                                        final showMidlLine =
                                            index + 1 < trip.waypoints.length &&
                                                trip.waypoints[index].type !=
                                                    trip.waypoints[index + 1].type;
                                        return TripInfoWidget(
                                          type: waypoint.type,
                                          address: waypoint.address,
                                          time: waypoint.apptFromTimestamp,
                                          showMidlLine: showMidlLine,
                                          iconName: waypoint.type.icon,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<TripDetailBloc>().add(
                              const TripDetailEvent.toggleStopsVisibility());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: theme.cardColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                state.areStopsVisible
                                    ? context.localizations.hideStops
                                    : context.localizations.allStops,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.scaffoldBackgroundColor,
                                ),
                              ),
                              const SizedBox(width: 5),
                              RotatedBox(
                                quarterTurns: state.areStopsVisible ? 1 : 3,
                                child: SvgPicture.asset(
                                  'assets/images/arrow.svg',
                                  height: 13,
                                  colorFilter: ColorFilter.mode(
                                    theme.scaffoldBackgroundColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
