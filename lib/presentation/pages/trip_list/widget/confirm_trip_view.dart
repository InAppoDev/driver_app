import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/update/update_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/customs/eta_bottom_sheet.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_detail_info.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ConfirmTripView extends StatelessWidget {
  const ConfirmTripView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: 'arrow',
          onPressed: context.pop,
          justIcon: true,
          width: 20,
          height: 20,
          iconColor: Theme.of(context).dividerColor,
        ),
        leadingWidth: 40,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: BlocBuilder<TripDetailBloc, TripDetailState>(
          builder: (context, state) {
            if (state.status == ActiveTripStatus.success &&
                state.trip != null) {
              return Text(
                '${context.localizations.begin.toUpperCase()} #${state.trip!.truckLoadId}',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).disabledColor,
                    ),
              );
            }
            return Text(
              context.localizations.begin,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.disabledColor,
              ),
            );
          },
        ),
      ),
      backgroundColor: theme.canvasColor,
      body: BlocConsumer<UpdateBloc, UpdateState>(
        listener: (context, updateState) {
          if (updateState.status == UpdateStatus.success) {
            context.pop(true);
          }
        },
        builder: (context, updateState) {
          if (updateState.status == UpdateStatus.loading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(context.localizations.startDriving),
                  const SizedBox(height: 10),
                  const CircularProgressIndicator(),
                ],
              ),
            );
          }
          return BlocBuilder<TripDetailBloc, TripDetailState>(
            builder: (context, state) {
              if (state.status == ActiveTripStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == ActiveTripStatus.failure) {
                return Center(
                  child: Text(
                    context.localizations.failedToLoadTrip,
                    style: TextStyle(color: theme.indicatorColor),
                  ),
                );
              } else if (state.status == ActiveTripStatus.success &&
                  state.trip != null) {
                final DispatchModel trip = state.trip!;

                return SafeArea(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    TripData(trip: trip),
                                    const SizedBox(height: 10),
                                    TripDetailInfo(trip: trip),
                                    const SizedBox(height: 100),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          color: theme.scaffoldBackgroundColor,
                          child: Column(
                            children: [
                              Text(
                                context.localizations.readyToBegin,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.dividerColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                label:
                                    context.localizations.begin.toUpperCase(),
                                onPressed: () async {
                                  final localizations = context.localizations;

                                  final result = await showModalBottomSheet<
                                      Map<String, dynamic>>(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (BuildContext bottomSheetContext) {
                                      return ETABottomSheet(
                                        trip: trip,
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
                                        title: localizations.startDriving,
                                        type: 'eta',
                                      );
                                    },
                                  );

                                  if (result != null && context.mounted) {
                                    final etaTimestamp =
                                        result['etaTimestamp'] as int?;
                                    final comment =
                                        result['comment'] as String?;
                                    final type = result['type'] as String;

                                    context.read<UpdateBloc>().add(
                                          UpdateEvent.sendUpdate(
                                            etaTimestamp: etaTimestamp,
                                            comment: comment,
                                            tripId: trip.id,
                                            type: type,
                                          ),
                                        );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
