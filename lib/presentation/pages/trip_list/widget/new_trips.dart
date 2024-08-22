import 'package:flutter/cupertino.dart';

import 'new_trips_widget.dart';

class NewTrips extends StatelessWidget {
  const NewTrips({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 50),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) => NewTripsWidget(onPressed: onPressed),
      ),
    );
  }
}
