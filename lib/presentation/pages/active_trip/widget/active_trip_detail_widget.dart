import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/fixed_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/next_trip.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';

class ActiveTripDetailWidget extends StatelessWidget {
  final DispatchModel trip;

  final List<String> documents;

  const ActiveTripDetailWidget({
    super.key,
    required this.trip,
    required this.documents,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 160, right: 16, left: 16),
            child: Column(
              children: [
                TripData(trip: trip),
                const SizedBox(height: 10),
                if (trip.nextWaypoint != null)
                  NextTrip(nextTrip: trip.nextWaypoint!),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),

          Align(
            alignment: Alignment.bottomCenter,
          child: FixedButton(
            documents: documents,
            trip: trip,
            onResult: (result) {
              if (context.mounted) {
                context.read<TripDetailBloc>().add(
                      TripDetailEvent.confirmTrip(
                        etaTimestamp: result.etaTimestamp,
                        comment: result.comment,
                        tripId: trip.id,
                        type: result.type,
                        isLoadReject: result.isLoadReject,
                        isCleanBol: result.isCleanBol,
                      ),
                    );
              }
            },
            onAddDocument: () {
              context
                  .read<TripDetailBloc>()
                  .add(const TripDetailEvent.addDocument());
            },
            onScanDocument: (image) {
              context
                  .read<TripDetailBloc>()
                  .add(TripDetailEvent.scanDocument(image));
            },
            onRemoveDocument: (doc) => context
                .read<TripDetailBloc>()
                .add(TripDetailEvent.removeDocument(doc)),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 175),
            child: GestureDetector(
              onTap: () => GoRouter.of(context).push('/chat/${trip.chatId}'),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).focusColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 22,
                      height: 22,
                      child: SvgPicture.asset(
                        'assets/images/message.svg',
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).scaffoldBackgroundColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    Text(
                      'Chat id ${trip.chatId}',
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
