import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';

class ApprovedTripBs extends StatelessWidget {
  const ApprovedTripBs({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return
      DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController)=> Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
        color: theme.scaffoldBackgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Confirm that you have embarked on this trip:',
              style: theme.textTheme.bodySmall!.copyWith(fontSize: 12),
            ),
            const SizedBox(height: 5),
            CustomButton(label: 'Approved trip', onPressed: (){},),
          ],
        ),
      ));

  }
}
