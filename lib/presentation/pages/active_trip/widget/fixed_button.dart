import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/call_type_result_model/call_type_result_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/confirm_left_bol_bs.dart';
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
  const FixedButton({
    super.key,
    required this.trip,
    required this.onResult,
  });

  final DispatchModel trip;
  final Function(CallTypeResultModel) onResult;

  @override
  State<FixedButton> createState() => _FixedButtonState();
}

class _FixedButtonState extends State<FixedButton> {
  bool isFinishTripPressed = false;

  CheckCallType checkCallEnum = CheckCallType.eta;

  @override
  void initState() {
    super.initState();
    if (widget.trip.nextMandatoryCheckCallType != null) {
      checkCallEnum = convertStringToCheckCallType(widget.trip.nextMandatoryCheckCallType!);
    }
  }

  CheckCallType convertStringToCheckCallType(String checkCallType) {
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

  String convertCheckCallTypeToString(CheckCallType checkCallType) {
    switch (checkCallType) {
      case CheckCallType.eta:
        return 'eta';
      case CheckCallType.pickupCheckIn:
        return 'pickup_check_in';
      case CheckCallType.deliveryCheckIn:
        return 'delivery_check_in';
      case CheckCallType.pickupCheckOut:
        return 'pickup_check_out';
      case CheckCallType.deliveryCheckOut:
        return 'delivery_check_out';
      case CheckCallType.finalDestination:
        return 'final_destination';
      default:
        throw ArgumentError('Invalid check call type');
    }
  }

  Future<void> showModalByCallType(CheckCallType checkCallEnum) async {
    final CallTypeResultModel? result = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bottomSheetContext) {
        return BlocProvider(
          create: (bottomSheetContext) => TripDetailBloc(),
          child: BlocBuilder<TripDetailBloc, TripDetailState>(
              builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: bottomSheet(context, checkCallEnum, state.documents),
            );
          }),
        );
      },
    );
    if (result != null) {
      widget.onResult(result);
    }
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

  Widget bottomSheet(BuildContext bottomSheetContext,
      CheckCallType checkCallEnum, List<String> docs) {
    final localizations = context.localizations;
    if (checkCallEnum == CheckCallType.eta) {
      return ETABottomSheet(
        trip: widget.trip,
        onConfirmPressed: (
          int? etaTimestamp,
          String? comment,
          String type,
        ) {
          Navigator.pop(
            bottomSheetContext,
            CallTypeResultModel(
              type: type,
              etaTimestamp: etaTimestamp,
              comment: comment,
            ),
          );
        },
        title: localizations.begin,
        type: 'eta',
      );
    }
    if (checkCallEnum == CheckCallType.deliveryCheckIn ||
        checkCallEnum == CheckCallType.pickupCheckIn ||
        checkCallEnum == CheckCallType.pickupCheckOut) {
      return FilePickerDialog(
        onAddFile: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.addDocument());
        },
        onScanFile: (image) {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(TripDetailEvent.scanDocument(image));
        },
        documents: docs,
        onConfirmPressed: (comment, _) {
          Navigator.pop(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              documentIds: docs,
              comment: comment,
            ),
          );
        },
        onFileRemove: (file) {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(TripDetailEvent.removeDocument(file.path));
        },
        isCleanBol: true,
        isFileLoading: false,
        isActiveTrip: true,
        title: (checkCallEnum == CheckCallType.deliveryCheckIn ||
                checkCallEnum == CheckCallType.pickupCheckIn)
            ? 'PHOTO INSPECTION'
            : 'BOL DOCUMENT',
      );
    }
    if (checkCallEnum == CheckCallType.deliveryCheckOut) {
      return IsCleanBolBS(
        onAddFile: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.addDocument());
        },
        onScanFile: (image) {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(TripDetailEvent.scanDocument(image));
        },
        documents: docs,
        onFileRemove: (file) {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(TripDetailEvent.removeDocument(file.path));
        },
        onConfirmPressed: (comment, isCleanBol) {
          Navigator.pop(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              documentIds: docs,
              comment: comment,
              isCleanBol: isCleanBol,
              isLoadReject: !isCleanBol,
            ),
          );
        },
      );
    }
    if (checkCallEnum == CheckCallType.finalDestination) {
      return ConfirmLeftBolBs(
        onConfirmPressed: (comment) {
          Navigator.pop(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              comment: comment,
            ),
          );
          setState(() {
            isFinishTripPressed = false;
          });
        },
      );
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.trip.nextMandatoryCheckCallType != null) {
      final theme = Theme.of(context);


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
                checkCallEnum == CheckCallType.finalDestination
                    ? !isFinishTripPressed
                        ? CustomButton(
                            label: 'FINISH TRIP',
                            onPressed: () {
                              setState(() {
                                isFinishTripPressed = true;
                              });
                            },
                          )
                        : CustomButton(
                            label: 'Confirm trailer drop location',
                            onPressed: () {
                              showModalByCallType(checkCallEnum);
                            },
                          )
                    : CustomButton(
                        label: buttonText(checkCallEnum),
                        onPressed: () {
                          setState(() {
                            checkCallEnum = CheckCallType.deliveryCheckIn;
                          });
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
