import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_detail_info.dart';

class ActiveTripDetailWidget extends StatelessWidget {
  final TripDetailState state;

  const ActiveTripDetailWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Column(
              children: [
                if (state.trip != null) TripData(trip: state.trip!),
                const SizedBox(height: 10),
                if (state.trip != null) TripDetailInfo(trip: state.trip!),
                const SizedBox(height: 10),
                UploadScanFiles(
                  onAddFile: () {
                    context
                        .read<TripDetailBloc>()
                        .add(const TripDetailEvent.pickFile());
                  },
                  onScanFile: (image) {
                    context
                        .read<TripDetailBloc>()
                        .add(TripDetailEvent.scanDoc(image));
                  },
                  selectedFile: state.selectedFile,
                  onFileRemove: (file) {
                    context
                        .read<TripDetailBloc>()
                        .add(TripDetailEvent.removeFile(file: file));
                  },
                  onUploadPressed: () {
                    context
                        .read<TripDetailBloc>()
                        .add(const TripDetailEvent.uploadFiles());
                  },
                  isFileLoading: state.isFileLoading,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 75,
          right: 0,
          child: GestureDetector(
            onTap: () =>
                GoRouter.of(context).push('/chat/${state.trip!.chatId}'),
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
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  Text(
                    'Chat id ${state.trip!.chatId}',
                    style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
