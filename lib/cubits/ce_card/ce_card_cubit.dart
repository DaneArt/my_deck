import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'ce_card_state.dart';

class CECardCubit extends Cubit<CECardState> {
  CECardCubit({@required MDECard card})
      : assert(card != null),
        super(CECardState.initial(card: card));

  Future<void> setContent(MDEFile file) async {
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
              question: MDTextFile(
                  uniqueId: state.card.question.uniqueId, text: text))));
    } else {
      emit(state.copyWith(
          card: state.card.copyWith(
              answer:
                  MDTextFile(uniqueId: state.card.answer.uniqueId, text: text))));
    }
  }

  void updateImage(File image) {
    if (state.isQuestion) {
      emit(state.copyWith(
          card: state.card.copyWith(
              question: MDImageFile(
                  uniqueId: state.card.question.uniqueId, file: image))));
    } else {
      emit(state.copyWith(
          card: state.card.copyWith(
              answer: MDImageFile(
                  uniqueId: state.card.answer.uniqueId, file: image))));
    }
  }

  Future<Option<MDEFile>> _updateContent(
      MDEFile currentFile, MDEFile newContent) async {
    if (newContent is MDTextFile && currentFile is MDTextFile) {
      return none();
    } else {
      return some(newContent);
    }
  }

  void rotateCard() {
    emit(state.copyWith(isQuestion: !state.isQuestion));
  }
}
