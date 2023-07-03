import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/cubit/live_now_view_cubit.dart';
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
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
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
                  DateTime(2023, 2, 11).subtract(const Duration(days: 3)),
                  locale: context.myLocale.toString(),
                  initialSelectedDate: DateTime(2023, 2, 11),
                  daysCount: 8,
                  monthTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
                  dayTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
                  dateTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
                  selectedTextColor: Colors.white,
                  deactivatedColor: AppColors.inactiveItemGrey,
                  height: 85,
                  width: 75,
                  onDateChange: (pickedDate) {
                    context.read<HomeCubit>().switchDate(
                          pickedDate,
                        );
                    context.read<ScoreTabCubit>().fetchMatchesByDate(pickedDate);
                    context.read<LiveNowViewCubit>().fetchLiveMatches();
                  },
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
