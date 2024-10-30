import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';
import 'package:tms_driver/presentation/utils/extension/waypoint_type.dart';

class TripItemWidget extends StatelessWidget {
  final Function(DispatchListModel) onPressed;
  final DispatchListModel trip;
  final bool isHistoryWidget;

  const TripItemWidget({
    super.key,
    required this.onPressed,
    required this.trip,
    required this.isHistoryWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        onPressed.call(trip);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(8),
                    bottomLeft: const Radius.circular(8),
                    bottomRight: Radius.circular(isHistoryWidget ? 8 : 0),
                    topRight: Radius.circular(isHistoryWidget ? 8 : 0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...trip.waypoints.mapIndexed((index, waypoint) {
                        final showMidlLine =
                            index + 1 < trip.waypoints.length &&
                                trip.waypoints[index].type !=
                                    trip.waypoints[index + 1].type;
                        return TripInfoWidget(
                          type: waypoint.type,
                          address: waypoint.address,
                          time: waypoint.apptFromTimestamp,
                          showMidlLine: showMidlLine,
                          iconName: WaypointTypeParser(waypoint.type).icon,
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          context.localizations
                              .totalMilesMiles(trip.routeTotalMi),
                          style: theme.textTheme.labelSmall!.copyWith(
                            fontSize: 8,
                            color: theme.dividerColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!isHistoryWidget)
              Container(
                width: 16,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 12,
                    color: theme.scaffoldBackgroundColor,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
