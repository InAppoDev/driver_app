import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/dispatch/waypoint/waypoint_detail_model.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';
import 'package:tms_driver/presentation/utils/extension/waypoint_type.dart';

class NextTrip extends StatelessWidget {
  const NextTrip({super.key, required this.nextTrip});

  final WaypointDetailModel nextTrip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme.scaffoldBackgroundColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.5, horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NEXT STOP:',
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              SvgPicture.asset(
                nextTrip.type.icon,
              ),
              const SizedBox(width: 10),
              Text(
                nextTrip.type.displayText,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.dividerColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            nextTrip.address,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.dividerColor,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Last check in location: ',
                style: theme.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '11:00 (AM)',
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.secondaryHeaderColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/spot.svg',
              ),
              const SizedBox(width: 5),
              Text(
                'Viena, Mariahilfer Straße 123,  Wien, Österreich',
                style: theme.textTheme.bodySmall!
                    .copyWith(color: AppColors.success),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
