import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_info_widget.dart';

class NewTripsWidget extends StatelessWidget {
  const NewTripsWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TripInfoWidget(
                      topic: 'Pick UP #1',
                      address: 'Viena, Österreich, 37240 , Ch',
                      time: '08/11/23 10:00 AM',
                    ),
                    const TripInfoWidget(
                      topic: 'Pick UP #2',
                      address: 'Viena, Österreich, 37240 , Ch',
                      time: '08/11/23 10:00 AM',
                    ),
                    const TripInfoWidget(
                      topic: 'Pick UP #3',
                      address: 'Viena, Österreich, 37240 , Ch',
                      time: '08/11/23 10:00 AM',
                    ),
                    const TripInfoWidget(
                      topic: 'Delivery #1',
                      address: 'Viena, Österreich, 37240 , Ch',
                      time: '08/11/23 10:00 AM',
                    ),
                    const TripInfoWidget(
                      topic: 'Delivery #2',
                      address: 'Viena, Österreich, 37240 , Ch',
                      time: "08/11/23 10:00 AM",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Total miles: 300 miles',
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
