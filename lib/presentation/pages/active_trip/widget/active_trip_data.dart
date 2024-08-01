import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';

class ActiveTripData extends StatelessWidget {
  const ActiveTripData({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: theme.scaffoldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 28,
                    width: 28,
                    icon: 'ios_arrow',
                    iconColor: theme.scaffoldBackgroundColor,
                    onPressed: onPressed,
                  ),
                  Text(
                    'trip № 12321312312232',
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.disabledColor,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                      color: theme.cardColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/load_box.svg'),
                        const SizedBox(width: 6),
                        Text(
                          'Load damage',
                          style: theme.textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Starting point',
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: theme.dividerColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55),
                    child: Text(
                      '-',
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: theme.dividerColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: theme.indicatorColor,
                  ),
                ),
                child: Text(
                  'You haven`t yet started the trip.',
                  style: theme.textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: theme.indicatorColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pick up #2133123',
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: theme.dividerColor),
                  ),
                  Text(
                    '08/11/23 10:00 AM',
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: theme.dividerColor),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Viena, Mariahilfer Straße 123,  Wien, Österreich',
                style: theme.textTheme.titleSmall!
                    .copyWith(color: theme.dividerColor),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: theme.cardColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'All Stops',
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.scaffoldBackgroundColor,
                ),
              ),
              const SizedBox(width: 5),
              RotatedBox(
                quarterTurns: 3,
                child: SvgPicture.asset(
                  'assets/images/arrow.svg',
                  height: 13,
                  colorFilter: ColorFilter.mode(
                    theme.scaffoldBackgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
