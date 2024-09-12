import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class NewTripsWidget extends StatelessWidget {
  const NewTripsWidget({
    super.key,
    required this.onPressed,
    required this.tripListModel,
  });
  final Function(DispatchListModel) onPressed;
  final DispatchListModel tripListModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        onPressed.call(tripListModel);
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...tripListModel.waypoints.map((detail) {
                        return TripInfoWidget(
                          topic: detail.typeTitle,
                          address: detail.address,
                          time: detail.apptFromTimestamp,
                          showMidlLine: true,
                          showTipImage: true,
                        );
                      }),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          context.localizations
                              .totalMilesMiles(tripListModel.routeTotalMi),
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
