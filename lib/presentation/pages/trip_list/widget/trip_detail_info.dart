import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/data/services/time_formatter.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class TripDetailInfo extends StatelessWidget {
  const TripDetailInfo({
    super.key,
    required this.trip,
  });
  final DispatchModel trip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localizations.tripInfo,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.dividerColor,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/distance.svg'),
                  Text(
                    context.localizations.distanceKm(trip.routeTotalMi),
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.dividerColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 22),
          if (trip.nextWaypoint != null)
            Text(
              trip.nextWaypoint!.typeTitle,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.disabledColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          const SizedBox(height: 15),
          if (trip.nextWaypoint != null &&
              trip.nextWaypoint!.apptFromTimestamp != null &&
              trip.nextWaypoint!.apptToTimestamp != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizations.hoursOfOperation,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.disabledColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/clock.svg'),
                    const SizedBox(width: 5),
                    Text(
                      '${TimeFormatter.formatTimestamp(trip.nextWaypoint!.apptFromTimestamp)} - ${TimeFormatter.formatTimestamp(trip.nextWaypoint!.apptToTimestamp)}',
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: theme.dividerColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (trip.cargoInfo.totalWeight != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.weight,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${trip.cargoInfo.totalWeight} ${context.localizations.tons}',
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: theme.dividerColor,
                      ),
                    )
                  ],
                ),
              if (trip.cargoInfo.commodity != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.commodity,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      trip.cargoInfo.commodity!,
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: theme.dividerColor,
                      ),
                    )
                  ],
                ),
              if (trip.cargoInfo.totalPallets != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.pallets,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      trip.cargoInfo.totalPallets!.toString(),
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: theme.dividerColor,
                      ),
                    )
                  ],
                ),
              if (trip.temperatureMaintainFrom != null &&
                  trip.temperatureMaintainTo != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.temperature,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'from ${trip.temperatureMaintainFrom} to ${trip.temperatureMaintainTo}',
                      style: theme.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: theme.dividerColor,
                      ),
                    )
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
