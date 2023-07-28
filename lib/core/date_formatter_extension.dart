import 'package:intl/intl.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

final _dateYyyyMmDdDashFormat = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat);


extension DateFormatterToDateTime on DateTime {
  DateTime formatDateToDateTime() {
    return DateTime.parse(_dateYyyyMmDdDashFormat.format(this));
  }
}

extension DateFormatterToString on String {
  String formatDateToYyyyMmDdString(String formatter) {
    return DateFormat(formatter).format(_dateYyyyMmDdDashFormat.parse(this));
  }

  String hourFromDate() {
    return DateFormat('kk:mm').format(DateFormat('yyyy-MM-ddTkk:mm').parse(this));
  }
}
