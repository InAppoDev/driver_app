import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ActiveTripInfo extends StatelessWidget {
  const ActiveTripInfo({super.key, required this.trip});
  final TripModel trip;

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
                    context.localizations.distanceKm(300),
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
          Text(
            trip.details.first.name ?? '',
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.disabledColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
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
                '10:00 AM - 19:00 PM',
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: theme.dividerColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    '25 ${context.localizations.tons}',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.dividerColor,
                    ),
                  )
                ],
              ),
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
                    'Meat',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.dividerColor,
                    ),
                  )
                ],
              ),
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
                    '5',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.dividerColor,
                    ),
                  )
                ],
              ),
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
                    '- 5 C',
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
