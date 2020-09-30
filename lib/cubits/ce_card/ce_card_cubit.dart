import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/utils/file_factory.dart';
import 'ce_card_state.dart';

class CECardCubit extends Cubit<CECardState> {
  CECardCubit({@required Card card})
      : assert(card != null),
        super(CECardState.initial(card: card));

  Future<void> setContent(MDFile file) async {
    if (state.isQuestion) {
      final updateResult = _updateContent(state.card.question, file);
      emit((await updateResult).fold(
          () => state,
          (newFile) =>
              state.copyWith(card: state.card.copyWith(question: newFile))));
    } else {
      final updateResult = _updateContent(state.card.answer, file);
      emit((await updateResult).fold(
          () => state,
          (newFile) =>
              state.copyWith(card: state.card.copyWith(answer: newFile))));
    }
  }

  void updateText(String text) {
    if (state.isQuestion) {
      emit(state.copyWith(
          card: state.card.copyWith(
              question: TextFile(
                  uniqueId: state.card.question.uniqueId, text: text))));
    } else {
      emit(state.copyWith(
          card: state.card.copyWith(
              answer:
                  TextFile(uniqueId: state.card.answer.uniqueId, text: text))));
    }
  }

  void updateImage(File image) {
    if (state.isQuestion) {
      emit(state.copyWith(
          card: state.card.copyWith(
              question: ImageFile(
                  uniqueId: state.card.question.uniqueId, file: image))));
    } else {
      emit(state.copyWith(
          card: state.card.copyWith(
              answer: ImageFile(
                  uniqueId: state.card.answer.uniqueId, file: image))));
    }
  }

  Future<Option<MDFile>> _updateContent(
      MDFile currentFile, MDFile newContent) async {
    if (newContent is TextFile && currentFile is TextFile) {
      return none();
    } else {
      return some(newContent);
    }
  }

  void rotateCard() {
    emit(state.copyWith(isQuestion: !state.isQuestion));
  }
}
