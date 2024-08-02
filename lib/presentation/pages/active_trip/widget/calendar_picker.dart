import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_dialog.dart';

class CalendarPicker extends StatelessWidget {
  const CalendarPicker({
    super.key,
    required this.onCalendarResponse,
    required this.dateTime,
  });

  final Function(String) onCalendarResponse;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.5, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select the date and time of arrival at PICK UP #1:',
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: theme.dividerColor,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final resp = await showDialog(
                  context: context,
                  builder: (context) =>  CalendarDialog());
              onCalendarResponse(resp);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 26),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                color: theme.scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: theme.focusColor.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Date\\ Time',
                    style: theme.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: -1,
                    child: SvgPicture.asset(
                      'assets/images/ios_arrow.svg',
                      colorFilter: ColorFilter.mode(
                        theme.unselectedWidgetColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          if (dateTime.isNotEmpty) ...[
            Text(
              dateTime,
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 10),
          ],
          CustomButton(
            label: 'SELECT',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
