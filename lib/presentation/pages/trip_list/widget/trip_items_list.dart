import 'package:flutter/cupertino.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';

import 'trip_item_widget.dart';

class TripItemsList extends StatelessWidget {
  final Function(DispatchListModel) onPressed;
  final List<DispatchListModel> trips;
  final bool isHistoryWidget;

  const TripItemsList({
    super.key,
    required this.onPressed,
    required this.trips,
    this.isHistoryWidget = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 80),
        shrinkWrap: true,
        itemCount: trips.length,
        itemBuilder: (context, index) => TripItemWidget(
          onPressed: onPressed,
          tripListModel: trips[index],
          isHistoryWidget: isHistoryWidget,
        ),
      ),
    );
  }
}
