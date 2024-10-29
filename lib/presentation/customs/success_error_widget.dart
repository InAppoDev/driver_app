import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

import 'custom_button.dart';

class SuccessErrorWidget extends StatelessWidget {
  const SuccessErrorWidget({super.key, required this.isSuccess, required this.onPressed, });

  final bool isSuccess;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isSuccess) ...[
          SvgPicture.asset('assets/images/success.svg', height: 70),
          const SizedBox(height: 20),
          Text(
            'Success!',
            style: theme.textTheme.labelMedium!.copyWith(
              color: AppColors.success,
            ),
          ),
        ],
        if (!isSuccess) ...[
          SvgPicture.asset('assets/images/error.svg', height: 70,),
          const SizedBox(height: 20),
          Text(
            'Something went wrong!',
            style: theme.textTheme.labelMedium!.copyWith(
              color: theme.indicatorColor,
            ),
          ),
        ],
        const SizedBox(height: 15),
        CustomButton(
          label: context.localizations.confirm.toUpperCase(),
          onPressed: () {
            Navigator.pop(context);
            onPressed();
          },
        ),
      ],
    );
  }
}
