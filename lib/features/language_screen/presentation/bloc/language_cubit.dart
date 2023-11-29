import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'language_state.dart';

part 'language_cubit.freezed.dart';

@injectable
class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit(this.languagesUseCase) : super(const LanguageState.initial());
  GetLanguagesUseCase languagesUseCase;

  Future getAllLanguages() async {
    try {
      emit(const LanguageState.loading());
      final response = await languagesUseCase();
      emit(LanguageState.loaded(response));
      return response;
    } catch (e) {
      emit(LanguageState.error(e));
    }
  }
}
