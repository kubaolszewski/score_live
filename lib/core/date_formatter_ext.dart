import 'package:intl/intl.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

final _dateYyyyMmDdDashFormat = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat);
const _basicDateTimeWithHourFormat = 'yyyy-MM-ddTkk:mm';
const _hourWithMinutesExtractedFormat = 'kk:mm';

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
    return DateFormat(_hourWithMinutesExtractedFormat).format(DateFormat(_basicDateTimeWithHourFormat).parse(this));
  }
}
