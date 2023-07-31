import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  DateTime formatActualDateToDateTime(String formatter) {
    return DateTime.parse(DateFormat(formatter).format(this));
  }
}
