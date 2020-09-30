import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/usecases/get_file_by_meta_usecase.dart';

part 'md_image_state.dart';
part 'md_image_cubit.freezed.dart';

class MDContentCubit extends Cubit<MDContentState> {
  MDContentCubit() : super(MDContentState.initial());

  Future<void> initFile(ImageFile sourceFile) async {
    emit(MDContentState.loading());
    final result = await sourceFile.getFileValue();
    emit(
      result.fold(
        (error) => MDContentState.error(),
        (file) => MDContentState.loaded(file),
      ),
    );
  }
}
