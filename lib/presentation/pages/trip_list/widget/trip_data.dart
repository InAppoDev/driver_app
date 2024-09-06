import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class TripData extends StatelessWidget {
  const TripData({super.key, required this.onPressed, required this.trip});

  final VoidCallback onPressed;
  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 30,
                    icon: 'ios_arrow',
                    iconColor: theme.scaffoldBackgroundColor,
                    onPressed: () {
                      context.pop(false);
                    },
                  ),
                  Text(
                    trip.details.first.name ?? '',
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.disabledColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: theme.cardColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/load_box.svg',
                        ),
                        const SizedBox(width: 6),
                        Text(
                          context.localizations.loadDamage,
                          style: theme.textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 8),
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
                        context.localizations.startingPoint,
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
                trip.details.first.address ?? '',
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
                        trip.details.first.name ?? '',
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: theme.dividerColor),
                      ),
                    ],
                  ),
                  Text(
                    trip.details.first.data ?? '',
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: theme.dividerColor),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                trip.details.first.address ?? '',
                style: theme.textTheme.titleSmall!
                    .copyWith(color: theme.dividerColor),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: theme.cardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localizations.allStops,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.scaffoldBackgroundColor,
                ),
              ),
              const SizedBox(width: 5),
              RotatedBox(
                quarterTurns: 3,
                child: SvgPicture.asset(
                  'assets/images/arrow.svg',
                  height: 13,
                  colorFilter: ColorFilter.mode(
                    theme.scaffoldBackgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
