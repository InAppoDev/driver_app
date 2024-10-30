import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/success_error_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

import 'custom_text_field.dart';

class ConfirmLeftBolBs extends StatefulWidget {
  const ConfirmLeftBolBs({
    super.key,
    required this.onConfirmPressed,
    required this.isConfirmTripSuccesses,
    required this.onSuccessCheckCallPressed,
    required this.isCheckCallLoading,
    required this.checkCallResponseMessage,
  });

  final Function(String) onConfirmPressed;
  final bool? isConfirmTripSuccesses;
  final VoidCallback onSuccessCheckCallPressed;
  final bool isCheckCallLoading;
 final String? checkCallResponseMessage;

  @override
  State<ConfirmLeftBolBs> createState() => _ConfirmLeftBolBsState();
}

class _ConfirmLeftBolBsState extends State<ConfirmLeftBolBs> {
  int minLines = 1;
  final TextEditingController commentController = TextEditingController();

  bool showErrorOnNoPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(16),
      color: theme.scaffoldBackgroundColor,
      child: SingleChildScrollView(
        child: widget.isConfirmTripSuccesses != null
            ? SuccessErrorWidget(
                isSuccess: widget.isConfirmTripSuccesses!,
                onPressed: () {
                  widget.onSuccessCheckCallPressed.call();
                },
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Confirm you left BOL in the trailer box:',
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: theme.dividerColor,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: width * 0.15,
                  label: 'Yes',
                  onPressed: () {
                    setState(() {
                      showErrorOnNoPressed = false;
                    });
                  },
                ),
                const SizedBox(width: 16),
                CustomButton(
                  width: width * 0.15,
                  label: 'No',
                  onlyBorder: true,
                  onPressed: () {
                    setState(() {
                      showErrorOnNoPressed = true;
                    });
                  },
                ),
              ],
            ),
            if (showErrorOnNoPressed) ...[
              const SizedBox(height: 18),
              Text(
                'Please leave BOL in the trailer box',
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: theme.splashColor,
                ),
              ),
            ],
            const SizedBox(height: 18),
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
              onPressed: (){
                widget.onConfirmPressed(commentController.text.trim());
              },
              isLoading: widget.isCheckCallLoading,
            ),
          ],
        ),
      ),
    );
  }
}
