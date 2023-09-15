import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension Localization on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}

extension MyLocale on BuildContext {
  Locale get myLocale => Localizations.localeOf(this);
}
