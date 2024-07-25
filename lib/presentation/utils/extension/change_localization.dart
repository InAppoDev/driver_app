import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ChangeLocalizations on BuildContext {
  AppLocalizations get localizations {
    final localizations = AppLocalizations.of(this);
    if (localizations == null) {
      throw FlutterError('AppLocalizations not found in the current context');
    }
    return localizations;
  }
}
