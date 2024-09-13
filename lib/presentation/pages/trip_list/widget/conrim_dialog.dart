import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/trip/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';
import 'package:tms_driver/presentation/customs/eta_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.onConfirmPressed,
    required this.trip,
  });

  final VoidCallback onConfirmPressed;
  final DispatchModel trip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.localizations.currentStop,
            style:
                theme.textTheme.bodySmall!.copyWith(color: theme.dividerColor),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              SvgPicture.asset('assets/images/arrow_truck.svg'),
              const SizedBox(width: 8),
              Text(
                trip.waypoints.first.type,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.secondaryHeaderColor),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            trip.waypoints.first.address,
            style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600, color: theme.dividerColor),
          ),
          const SizedBox(height: 30),
          Text(
            'ETA',
            style:
                theme.textTheme.bodySmall!.copyWith(color: theme.dividerColor),
          ),
          const SizedBox(height: 10),
          CustomDateWidget(
            date: trip.waypoints.first.apptFromTimestamp,
            textStyle: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.dividerColor,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              EtaWidget(
                text: '+ 30 ${context.localizations.min}',
                onPressed: () {},
              ),
              EtaWidget(
                text: '+ 1 ${context.localizations.hour}',
                onPressed: () {},
              ),
              EtaWidget(
                text: context.localizations.custom,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 15),
          CustomButton(
            label: context.localizations.confirm,
            onPressed: onConfirmPressed,
          ),
        ],
      ),
    );
  }
}
