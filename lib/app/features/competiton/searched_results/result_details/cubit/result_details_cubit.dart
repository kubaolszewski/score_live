import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_details_state.dart';
part 'result_details_cubit.freezed.dart';

class ResultDetailsCubit extends Cubit<ResultDetailsState> {
  ResultDetailsCubit() : super(const ResultDetailsState());
}
