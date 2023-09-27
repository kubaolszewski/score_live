import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/extensions/enums.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(const AccountState());

  void switchFilter(SearchTypes filter) {
    switch (filter) {
      case SearchTypes.team:
        emit(state.copyWith(searchFilter: SearchTypes.team));
      case SearchTypes.league:
        emit(state.copyWith(searchFilter: SearchTypes.league));
    }
  }

  void switchSettingsVisibility() => emit(state.copyWith(generalSettingsVisibility: !state.generalSettingsVisibility));
}
