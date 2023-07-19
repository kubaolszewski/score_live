import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeScreenDatePicker extends StatelessWidget {
  const HomeScreenDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: DatePicker(
                  DateTime.now().subtract(const Duration(days: 3)),
                  locale: context.myLocale.toString(),
                  initialSelectedDate: DateTime.now(),
                  daysCount: 8,
                  monthTextStyle: const TextStyle(color: AppColors.inactiveTextGrey, fontWeight: FontWeight.bold),
                  dayTextStyle: const TextStyle(color: AppColors.inactiveTextGrey, fontWeight: FontWeight.bold),
                  dateTextStyle: const TextStyle(color: AppColors.inactiveTextGrey, fontWeight: FontWeight.bold),
                  selectedTextColor: Colors.white,
                  deactivatedColor: AppColors.inactiveItemGrey,
                  height: 85,
                  width: 75,
                  onDateChange: (pickedDate) {
                    context.read<HomeCubit>().switchDate(pickedDate);
                    context.read<ScoreTabCubit>().fetchMatchesByDate(pickedDate);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
