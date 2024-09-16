import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

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
                              'assets/images/point.svg',
                              height: 15,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'check text', //TODO
                              style: theme.textTheme.titleSmall!
                                  .copyWith(color: theme.dividerColor),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Text(
                            '-',
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: theme.dividerColor),
                          ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/truck_pick_up.svg',
                              height: 12,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              trip.waypoints.first.typeTitle,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(color: theme.dividerColor),
                            ),
                          ],
                        ),
                        CustomDateWidget(
                          date: trip.waypoints.first.apptFromTimestamp,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      trip.waypoints.first.address,
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: theme.dividerColor),
                    ),
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
                            ? Column(
                                children: [
                                  ...trip.waypoints.skip(1).map((waypoint) {
                                    return TripInfoWidget(
                                      type: waypoint.type,
                                      // typeTitle: waypoint.typeTitle,
                                      address: waypoint.address,
                                      time: waypoint.apptFromTimestamp,
                                      showMidlLine: true,
                                      showTipImage: true,
                                    );
                                  }),
                                ],
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
