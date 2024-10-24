import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/eta_bottom_sheet.dart';
import 'package:tms_driver/presentation/customs/is_clean_bol_bs.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/file_picker_dialog.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

enum CheckCallType {
  eta,
  pickupCheckIn,
  deliveryCheckIn,
  pickupCheckOut,
  deliveryCheckOut,
  finalDestination,
}

class FixedButton extends StatefulWidget {
  const FixedButton({super.key, required this.trip});

  final DispatchModel trip;

  @override
  State<FixedButton> createState() => _FixedButtonState();
}

class _FixedButtonState extends State<FixedButton> {
  CheckCallType _mapStringToEnum(String checkCallType) {
    switch (checkCallType) {
      case 'eta':
        return CheckCallType.eta;
      case 'pickup_check_in':
        return CheckCallType.pickupCheckIn;
      case 'delivery_check_in':
        return CheckCallType.deliveryCheckIn;
      case 'pickup_check_out':
        return CheckCallType.pickupCheckOut;
      case 'delivery_check_out':
        return CheckCallType.deliveryCheckOut;
      case 'final_destination':
        return CheckCallType.finalDestination;
      default:
        throw ArgumentError('Invalid check call type');
    }
  }

  Future<void> showModalByCallType(CheckCallType checkCallEnum) async {
    // setState(() {
    //   checkCallEnum = CheckCallType.deliveryCheckOut;
    // });
    final result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bottomSheetContext) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: bottomSheet(bottomSheetContext, checkCallEnum),
        );
      },
    );
  }

  String buttonText(CheckCallType checkCallType) {
    switch (checkCallType) {
      case CheckCallType.eta:
        return 'SET ETA';
      case CheckCallType.pickupCheckIn:
        return 'PICKUP CHECK-IN';
      case CheckCallType.deliveryCheckIn:
        return 'DELIVERY CHECK-IN';
      case CheckCallType.pickupCheckOut:
        return 'PICKUP CHECK-OUT';
      case CheckCallType.deliveryCheckOut:
        return 'DELIVERY CHECK-OUT';
      case CheckCallType.finalDestination:
        return 'FINISH TRIP';
      default:
        throw ArgumentError('Invalid check call type');
    }
  }

  Widget bottomSheet(
      BuildContext bottomSheetContext, CheckCallType checkCallEnum) {
    final localizations = context.localizations;
    if (checkCallEnum == CheckCallType.eta) {
      return ETABottomSheet(
        trip: widget.trip,
        onConfirmPressed: (
          int? etaTimestamp,
          String? comment,
          String type,
        ) {
          Navigator.pop(bottomSheetContext, {
            'etaTimestamp': etaTimestamp,
            'comment': comment,
            'type': type,
          });
        },
        title: localizations.begin,
        type: 'eta',
      );
    }
    if (checkCallEnum == CheckCallType.deliveryCheckIn ||
        checkCallEnum == CheckCallType.pickupCheckIn ||
        checkCallEnum == CheckCallType.pickupCheckOut) {
      return FilePickerDialog(
        onAddFile: () {},
        onScanFile: (image) {},
        onFileRemove: (file) {},
        isFileLoading: false,
        isActiveTrip: true,
        title: (checkCallEnum == CheckCallType.deliveryCheckIn ||
                checkCallEnum == CheckCallType.pickupCheckIn)
            ? 'PHOTO INSPECTION'
            : 'BOL DOCUMENT',
      );
    }
    if (checkCallEnum == CheckCallType.deliveryCheckOut) {
      return const IsCleanBolBS();
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.trip.nextMandatoryCheckCallType != null) {
      final theme = Theme.of(context);
      final checkCallEnum =
          _mapStringToEnum(widget.trip.nextMandatoryCheckCallType!);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: theme.scaffoldBackgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (checkCallEnum == CheckCallType.finalDestination)
                  Text(
                    'Confirm that you have completed this trip:',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                CustomButton(
                  label: buttonText(checkCallEnum),
                  onPressed: () {
                    showModalByCallType(checkCallEnum);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            color: AppColors.lightGray.withOpacity(0.8),
          ),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}
