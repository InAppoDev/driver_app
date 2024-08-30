import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';
class NewTripsWidget extends StatelessWidget {
  const NewTripsWidget({
    super.key,
    required this.onPressed,
    required this.tripModel,
  });
  final Function(TripModel) onPressed;
  final TripModel tripModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        onPressed.call(tripModel);
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
                      ...tripModel.details.mapIndexed(
                        (index, detail) {
                          final customItem = tripModel.details[tripModel.details
                                  .indexOf(tripModel.details.skip(1).firstWhere(
                                      (item) => item.name != null
                                          ? item.name!.contains('1')
                                          : false)) -
                              1];
                          return TripInfoWidget(
                            topic: detail.name ?? '',
                            address: detail.address ?? '',
                            time: detail.data ?? '',
                            showMidlLine: detail == customItem,
                            showTipImage:
                                index > tripModel.details.indexOf(customItem),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: Text(
                          'Total miles: ${tripModel.miles ?? 0} miles',
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
