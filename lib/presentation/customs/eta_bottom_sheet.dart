import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/customs/custom_addres.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/customs/eta_widget.dart';
import 'package:tms_driver/presentation/customs/success_error_widget.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_dialog.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ETABottomSheet extends StatefulWidget {
  final DispatchModel trip;
  final Function(
    int? etaTimestamp,
    String? comment,
    String type,
  ) onConfirmPressed;
  final String? title;
  final String type;
  final bool? isConfirmTripSuccesses;
  final bool? isCheckCallLoading;
  final VoidCallback? onSuccessCheckCallPressed;

  const ETABottomSheet({
    super.key,
    required this.trip,
    required this.onConfirmPressed,
    this.title,
    required this.type,
    this.isConfirmTripSuccesses,
    this.onSuccessCheckCallPressed,
    this.isCheckCallLoading,
  });

  @override
  ETABottomSheetState createState() => ETABottomSheetState();
}

class ETABottomSheetState extends State<ETABottomSheet> {
  int? _nextEtaTimestamp;
  int minLines = 1;
  final TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nextEtaTimestamp = widget.trip.nextEtaTimestamp;
  }

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  void _addMinutesToEta(int minutes) {
    setState(() {
      if (_nextEtaTimestamp != null) {
        _nextEtaTimestamp =
            DateTime.fromMillisecondsSinceEpoch(_nextEtaTimestamp!)
                .add(Duration(minutes: minutes))
                .millisecondsSinceEpoch;
      }
    });
  }

  Future<void> _setCustomEta() async {
    final resp = await showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return CalendarBottomSheet(
          initialTimestamp: _nextEtaTimestamp,
        );
      },
    );

    if (resp != null) {
      setState(() {
        _nextEtaTimestamp = resp;
      });
    }
  }

  void _confirmTrip() {
    final int? etaTimestamp = _nextEtaTimestamp;
    final String? comment =
        commentController.text.isNotEmpty ? commentController.text : null;
    final String type = widget.type;

    widget.onConfirmPressed(etaTimestamp, comment, type);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        color: theme.scaffoldBackgroundColor,
      ),
      child: SingleChildScrollView(
        child: widget.isConfirmTripSuccesses != null
            ? SuccessErrorWidget(
                isSuccess: widget.isConfirmTripSuccesses!,
                onPressed: () {
                  widget.onSuccessCheckCallPressed?.call();
                },
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
            if (widget.title != null)
              Center(
                child: Text(
                  widget.title!.toUpperCase(),
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.dividerColor,
                  ),
                ),
              ),
            const SizedBox(height: 20),
            Text(
              context.localizations.nextStop.toUpperCase(),
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.dividerColor),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                SvgPicture.asset('assets/images/arrow_truck.svg'),
                const SizedBox(width: 8),
                Text(
                  '${widget.trip.nextEtaWaypoint?.typeTitle.toUpperCase()} ${widget.trip.nextEtaWaypoint?.id.toString()}',
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.secondaryHeaderColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            if (widget.trip.nextWaypoint != null)
              CustomAddress(waypointDetail: widget.trip.nextWaypoint!),
            const SizedBox(height: 30),
            Text(
              context.localizations.eta.toUpperCase(),
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.dividerColor),
            ),
            if (_nextEtaTimestamp != null)
              CustomDateWidget(
                date: _nextEtaTimestamp!,
                textStyle: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.dividerColor,
                ),
              ),
            const SizedBox(height: 15),
            Row(
              children: [
                if (_nextEtaTimestamp != null)
                  EtaWidget(
                    text: '+ 30 ${context.localizations.min}',
                    onPressed: () => _addMinutesToEta(30),
                  ),
                if (_nextEtaTimestamp != null)
                  EtaWidget(
                    text: '+ 1 ${context.localizations.hour}',
                    onPressed: () => _addMinutesToEta(60),
                  ),
                EtaWidget(
                  text: context.localizations.custom,
                  onPressed: _setCustomEta,
                ),
              ],
            ),
            const SizedBox(height: 14),
            Container(
              constraints: BoxConstraints(maxHeight: height * 0.17),
              child: CustomTextField(
                hintText: context.localizations.addComment.toUpperCase(),
                controller: commentController,
                minLines: minLines,
                onChanged: (text) {
                  if (text.split('\n').length > 1) {
                    setState(() {
                      minLines = text.split('\n').length + 1;
                    });
                  }
                  if (text.isEmpty || text.split('\n').length == 1) {
                    setState(() {
                      minLines = 1;
                    });
                  }
                },
                keyboardType: TextInputType.multiline,
              ),
            ),
            const SizedBox(height: 14),
            CustomButton(
              label: context.localizations.confirm.toUpperCase(),
              onPressed: _confirmTrip,
              isDisabled: _nextEtaTimestamp == null,
                    isLoading: widget.isCheckCallLoading != null &&
                        widget.isCheckCallLoading!,
                  ),
          ],
        ),
      ),
    );
  }
}
