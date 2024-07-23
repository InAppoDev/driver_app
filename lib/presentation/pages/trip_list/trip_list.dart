import 'package:flutter/material.dart';

class TripListPage extends StatelessWidget {
  const TripListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: const Center(
        child: Text('Trip Page'),
      ),
    );
  }
}
