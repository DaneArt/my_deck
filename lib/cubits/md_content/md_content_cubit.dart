import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/mde_file.dart';

part 'md_content_cubit.freezed.dart';
part 'md_content_state.dart';

class MDContentCubit<T> extends Cubit<MDContentState<T>> {
  MDContentCubit() : super(MDContentState.initial());

  Future<void> initFile(MDEFile sourceFile) async {
    emit(MDContentState.loading());
   Either result;
    if (sourceFile is MDImageFile) {
      result = await sourceFile.getFileValue();
    } else if (sourceFile is MDTextFile) {
      result = await sourceFile.cachedTextValue;
    }

    emit(
      result.fold(
        (error) => MDContentState.error(),
        (success) => MDContentState.loaded(success),
      ),
    );
  }
}
