part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(SearchTypes.league) SearchTypes searchFilter,
    @Default(true) bool generalSettingsVisibility,
  }) = _AccountState;
}
