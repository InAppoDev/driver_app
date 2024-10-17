import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';
import 'package:tms_driver/presentation/utils/extension/waypoint_type.dart';

class TripInfoWidget extends StatelessWidget {
  const TripInfoWidget({
    super.key,
    required this.type,
    required this.address,
    this.time,
    required this.showMidlLine,
    required this.iconName,
  });

  final String type;
  final String address;
  final int? time;
  final bool showMidlLine;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            border: RDottedLineBorder(
              bottom: !showMidlLine
                  ? const BorderSide(color: Colors.transparent)
                  : BorderSide(color: theme.dividerColor),
              left: BorderSide(color: theme.dividerColor),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type.displayText,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: theme.disabledColor),
                    ),
                    Text(
                      address,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.dividerColor,
                        fontSize: 9,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.localizations.apptTime,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: theme.disabledColor),
                    ),
                    if (time != null)
                      CustomDateWidget(
                        date: time!,
                        textStyle: theme.textTheme.bodySmall!.copyWith(
                          color: theme.dividerColor,
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: iconName.contains('point') ? 16 :  12),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: SvgPicture.asset(
              iconName,
              height: iconName.contains('point') ? 14 : 10,
              width: iconName.contains('point') ? 14 : 10,
            ),
          ),
        ),
      ],
    );
  }
}
