import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/call_type_result_model/call_type_result_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/confirm_left_bol_bs.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/eta_bottom_sheet.dart';
import 'package:tms_driver/presentation/customs/is_clean_bol_bs.dart';
import 'package:tms_driver/presentation/customs/success_error_widget.dart';
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
    required this.isConfirmTripSuccesses,
  });

  final DispatchModel trip;
  final bool? isConfirmTripSuccesses;

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

  Future<void> showModalByCallType(
    CheckCallType checkCallEnum,
  ) async {
    await showModalBottomSheet(
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
                child: bottomSheet(
                  bottomSheetContext: context,
                  checkCallEnum: checkCallEnum,
                  docs: state.documents,
                  tripId: widget.trip.id,
                  isConfirmTripSuccesses: state.isConfirmTripSuccesses,
                  isCheckCallLoading: state.isCheckCallLoading,
                ),
              );
            },
          ),
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

  Future<void> onCheckCallResult(
      BuildContext context, CallTypeResultModel result, int tripId) async {
    context.read<TripDetailBloc>().add(
          TripDetailEvent.confirmTrip(
              etaTimestamp: result.etaTimestamp,
              comment: result.comment,
              tripId: tripId,
              type: result.type,
              isLoadReject: result.isLoadReject,
              isCleanBol: result.isCleanBol,
              documentIds: result.documentIds,
              onResult: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: SuccessErrorWidget(
                        isSuccess: false,
                        onPressed: () {
                          context.read<TripDetailBloc>().add(
                              const TripDetailEvent
                                  .setCheckCallCheckerToNull());
                        },
                      ),
                    ),
                  ),
                );
              }),
        );
  }

  Widget bottomSheet({
    required BuildContext bottomSheetContext,
    required CheckCallType checkCallEnum,
    required List<String> docs,
    required bool? isConfirmTripSuccesses,
    required int tripId,
    required bool isCheckCallLoading,
  }) {
    final localizations = context.localizations;
    if (checkCallEnum == CheckCallType.eta) {
      return ETABottomSheet(
        isConfirmTripSuccesses: isConfirmTripSuccesses,
        isCheckCallLoading: isCheckCallLoading,
        onSuccessCheckCallPressed: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.setCheckCallCheckerToNull());
        },
        trip: widget.trip,
        onConfirmPressed: (
          int? etaTimestamp,
          String? comment,
          String type,
        ) {
          onCheckCallResult(
            bottomSheetContext,
            CallTypeResultModel(
              type: type,
              etaTimestamp: etaTimestamp,
              comment: comment,
            ),
            tripId,
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
        isCheckCallLoading: isCheckCallLoading,
        onSuccessCheckCallPressed: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.setCheckCallCheckerToNull());
        },
        isConfirmTripSuccesses: isConfirmTripSuccesses,
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
          onCheckCallResult(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              documentIds: docs,
              comment: comment,
            ),
            tripId,
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
        isCheckCallLoading: isCheckCallLoading,
        onSuccessCheckCallPressed: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.setCheckCallCheckerToNull());
        },
        isConfirmTripSuccesses: isConfirmTripSuccesses,
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
          onCheckCallResult(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              documentIds: docs,
              comment: comment,
              isCleanBol: isCleanBol,
              isLoadReject: !isCleanBol,
            ),
            tripId,
          );
        },
      );
    }
    if (checkCallEnum == CheckCallType.finalDestination) {
      return ConfirmLeftBolBs(
        isCheckCallLoading: isCheckCallLoading,
        onSuccessCheckCallPressed: () {
          bottomSheetContext
              .read<TripDetailBloc>()
              .add(const TripDetailEvent.setCheckCallCheckerToNull());
        },
        isConfirmTripSuccesses: isConfirmTripSuccesses,
        onConfirmPressed: (comment) {
          onCheckCallResult(
            bottomSheetContext,
            CallTypeResultModel(
              type: convertCheckCallTypeToString(checkCallEnum),
              comment: comment,
            ),
            tripId,
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

      // setState(() {
      //   checkCallEnum = CheckCallType.pickupCheckOut;
      // });
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
                              showModalByCallType(
                                checkCallEnum,
                              );
                            },
                          )
                    : CustomButton(
                        label: buttonText(checkCallEnum),
                        onPressed: () {
                          showModalByCallType(
                            checkCallEnum,
                          );
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
