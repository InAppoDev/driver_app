import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/dispatch/waypoint/waypoint_detail_model.dart';

class CustomAddress extends StatelessWidget {
  final WaypointDetailModel waypointDetail;

  const CustomAddress({
    required this.waypointDetail,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final fullAddress =
        '${waypointDetail.address}, ${waypointDetail.city}, ${waypointDetail.stateCode} ${waypointDetail.zipCode}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fullAddress,
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w500,
            color: theme.dividerColor,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
