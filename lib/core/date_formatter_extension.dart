import 'package:intl/intl.dart';

final _dateYyyyMmDdDashFormat = DateFormat('yyyy-MM-dd');

extension DateFormatterToDateTime on DateTime {
  DateTime formatDateToDateTime() {
    return DateTime.parse(_dateYyyyMmDdDashFormat.format(this));
  }
}

extension DateFormatterToString on String {
  String formatDateToString(String formatter) {
    return DateFormat(formatter).format(_dateYyyyMmDdDashFormat.parse(this));
  }
}
