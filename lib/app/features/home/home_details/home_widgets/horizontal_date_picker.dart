import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeScreenDatePicker extends StatefulWidget {
  const HomeScreenDatePicker({super.key});

  @override
  State<HomeScreenDatePicker> createState() => HomeScreenDatePickerState();
}

class HomeScreenDatePickerState extends State<HomeScreenDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          Expanded(
            child: DatePicker(
              DateTime.now().subtract(const Duration(days: 2)),
              locale: context.myLocale.toString(),
              initialSelectedDate: DateTime.now(),
              daysCount: 8,
              monthTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              dayTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              dateTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              selectedTextColor: Colors.white,
              deactivatedColor: AppColors.inactiveItemGrey,
              height: 85,
              width: 75,
              onDateChange: (newDate) {},
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
