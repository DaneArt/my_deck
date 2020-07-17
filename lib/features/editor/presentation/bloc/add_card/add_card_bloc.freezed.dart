// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'add_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddCardEventTearOff {
  const _$AddCardEventTearOff();

  RotateCard rotateCard() {
    return RotateCard();
  }

  DeleteCard deleteCard() {
    return DeleteCard();
  }

  ChangeIndex changeIndex({@required int newIndex}) {
    return ChangeIndex(
      newIndex: newIndex,
    );
  }

  QuestionChanged questionChanged({@required MyDeckFile newQuestion}) {
    return QuestionChanged(
      newQuestion: newQuestion,
    );
  }

  AnswerChanged answerChanged({@required MyDeckFile newAnswer}) {
    return AnswerChanged(
      newAnswer: newAnswer,
    );
  }

  SetText setTextContent() {
    return SetText();
  }

  SetImage setImageContent({@required File image}) {
    return SetImage(
      image: image,
    );
  }

  SaveChangesAndExit saveChangesAndExit() {
    return SaveChangesAndExit();
  }
}

// ignore: unused_element
const $AddCardEvent = _$AddCardEventTearOff();

mixin _$AddCardEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  });
}

abstract class $AddCardEventCopyWith<$Res> {
  factory $AddCardEventCopyWith(
          AddCardEvent value, $Res Function(AddCardEvent) then) =
      _$AddCardEventCopyWithImpl<$Res>;
}

class _$AddCardEventCopyWithImpl<$Res> implements $AddCardEventCopyWith<$Res> {
  _$AddCardEventCopyWithImpl(this._value, this._then);

  final AddCardEvent _value;
  // ignore: unused_field
  final $Res Function(AddCardEvent) _then;
}

abstract class $RotateCardCopyWith<$Res> {
  factory $RotateCardCopyWith(
          RotateCard value, $Res Function(RotateCard) then) =
      _$RotateCardCopyWithImpl<$Res>;
}

class _$RotateCardCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $RotateCardCopyWith<$Res> {
  _$RotateCardCopyWithImpl(RotateCard _value, $Res Function(RotateCard) _then)
      : super(_value, (v) => _then(v as RotateCard));

  @override
  RotateCard get _value => super._value as RotateCard;
}

class _$RotateCard implements RotateCard {
  _$RotateCard();

  @override
  String toString() {
    return 'AddCardEvent.rotateCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RotateCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return rotateCard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateCard != null) {
      return rotateCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return rotateCard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateCard != null) {
      return rotateCard(this);
    }
    return orElse();
  }
}

abstract class RotateCard implements AddCardEvent {
  factory RotateCard() = _$RotateCard;
}

abstract class $DeleteCardCopyWith<$Res> {
  factory $DeleteCardCopyWith(
          DeleteCard value, $Res Function(DeleteCard) then) =
      _$DeleteCardCopyWithImpl<$Res>;
}

class _$DeleteCardCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $DeleteCardCopyWith<$Res> {
  _$DeleteCardCopyWithImpl(DeleteCard _value, $Res Function(DeleteCard) _then)
      : super(_value, (v) => _then(v as DeleteCard));

  @override
  DeleteCard get _value => super._value as DeleteCard;
}

class _$DeleteCard implements DeleteCard {
  _$DeleteCard();

  @override
  String toString() {
    return 'AddCardEvent.deleteCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return deleteCard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCard != null) {
      return deleteCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class DeleteCard implements AddCardEvent {
  factory DeleteCard() = _$DeleteCard;
}

abstract class $ChangeIndexCopyWith<$Res> {
  factory $ChangeIndexCopyWith(
          ChangeIndex value, $Res Function(ChangeIndex) then) =
      _$ChangeIndexCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

class _$ChangeIndexCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $ChangeIndexCopyWith<$Res> {
  _$ChangeIndexCopyWithImpl(
      ChangeIndex _value, $Res Function(ChangeIndex) _then)
      : super(_value, (v) => _then(v as ChangeIndex));

  @override
  ChangeIndex get _value => super._value as ChangeIndex;

  @override
  $Res call({
    Object newIndex = freezed,
  }) {
    return _then(ChangeIndex(
      newIndex: newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

class _$ChangeIndex implements ChangeIndex {
  _$ChangeIndex({@required this.newIndex}) : assert(newIndex != null);

  @override
  final int newIndex;

  @override
  String toString() {
    return 'AddCardEvent.changeIndex(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeIndex &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newIndex);

  @override
  $ChangeIndexCopyWith<ChangeIndex> get copyWith =>
      _$ChangeIndexCopyWithImpl<ChangeIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return changeIndex(newIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeIndex != null) {
      return changeIndex(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeIndex implements AddCardEvent {
  factory ChangeIndex({@required int newIndex}) = _$ChangeIndex;

  int get newIndex;
  $ChangeIndexCopyWith<ChangeIndex> get copyWith;
}

abstract class $QuestionChangedCopyWith<$Res> {
  factory $QuestionChangedCopyWith(
          QuestionChanged value, $Res Function(QuestionChanged) then) =
      _$QuestionChangedCopyWithImpl<$Res>;
  $Res call({MyDeckFile newQuestion});

  $MyDeckFileCopyWith<$Res> get newQuestion;
}

class _$QuestionChangedCopyWithImpl<$Res>
    extends _$AddCardEventCopyWithImpl<$Res>
    implements $QuestionChangedCopyWith<$Res> {
  _$QuestionChangedCopyWithImpl(
      QuestionChanged _value, $Res Function(QuestionChanged) _then)
      : super(_value, (v) => _then(v as QuestionChanged));

  @override
  QuestionChanged get _value => super._value as QuestionChanged;

  @override
  $Res call({
    Object newQuestion = freezed,
  }) {
    return _then(QuestionChanged(
      newQuestion: newQuestion == freezed
          ? _value.newQuestion
          : newQuestion as MyDeckFile,
    ));
  }

  @override
  $MyDeckFileCopyWith<$Res> get newQuestion {
    if (_value.newQuestion == null) {
      return null;
    }
    return $MyDeckFileCopyWith<$Res>(_value.newQuestion, (value) {
      return _then(_value.copyWith(newQuestion: value));
    });
  }
}

class _$QuestionChanged implements QuestionChanged {
  _$QuestionChanged({@required this.newQuestion}) : assert(newQuestion != null);

  @override
  final MyDeckFile newQuestion;

  @override
  String toString() {
    return 'AddCardEvent.questionChanged(newQuestion: $newQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuestionChanged &&
            (identical(other.newQuestion, newQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.newQuestion, newQuestion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newQuestion);

  @override
  $QuestionChangedCopyWith<QuestionChanged> get copyWith =>
      _$QuestionChangedCopyWithImpl<QuestionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return questionChanged(newQuestion);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (questionChanged != null) {
      return questionChanged(newQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return questionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (questionChanged != null) {
      return questionChanged(this);
    }
    return orElse();
  }
}

abstract class QuestionChanged implements AddCardEvent {
  factory QuestionChanged({@required MyDeckFile newQuestion}) =
      _$QuestionChanged;

  MyDeckFile get newQuestion;
  $QuestionChangedCopyWith<QuestionChanged> get copyWith;
}

abstract class $AnswerChangedCopyWith<$Res> {
  factory $AnswerChangedCopyWith(
          AnswerChanged value, $Res Function(AnswerChanged) then) =
      _$AnswerChangedCopyWithImpl<$Res>;
  $Res call({MyDeckFile newAnswer});

  $MyDeckFileCopyWith<$Res> get newAnswer;
}

class _$AnswerChangedCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $AnswerChangedCopyWith<$Res> {
  _$AnswerChangedCopyWithImpl(
      AnswerChanged _value, $Res Function(AnswerChanged) _then)
      : super(_value, (v) => _then(v as AnswerChanged));

  @override
  AnswerChanged get _value => super._value as AnswerChanged;

  @override
  $Res call({
    Object newAnswer = freezed,
  }) {
    return _then(AnswerChanged(
      newAnswer:
          newAnswer == freezed ? _value.newAnswer : newAnswer as MyDeckFile,
    ));
  }

  @override
  $MyDeckFileCopyWith<$Res> get newAnswer {
    if (_value.newAnswer == null) {
      return null;
    }
    return $MyDeckFileCopyWith<$Res>(_value.newAnswer, (value) {
      return _then(_value.copyWith(newAnswer: value));
    });
  }
}

class _$AnswerChanged implements AnswerChanged {
  _$AnswerChanged({@required this.newAnswer}) : assert(newAnswer != null);

  @override
  final MyDeckFile newAnswer;

  @override
  String toString() {
    return 'AddCardEvent.answerChanged(newAnswer: $newAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AnswerChanged &&
            (identical(other.newAnswer, newAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.newAnswer, newAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newAnswer);

  @override
  $AnswerChangedCopyWith<AnswerChanged> get copyWith =>
      _$AnswerChangedCopyWithImpl<AnswerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return answerChanged(newAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerChanged != null) {
      return answerChanged(newAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return answerChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answerChanged != null) {
      return answerChanged(this);
    }
    return orElse();
  }
}

abstract class AnswerChanged implements AddCardEvent {
  factory AnswerChanged({@required MyDeckFile newAnswer}) = _$AnswerChanged;

  MyDeckFile get newAnswer;
  $AnswerChangedCopyWith<AnswerChanged> get copyWith;
}

abstract class $SetTextCopyWith<$Res> {
  factory $SetTextCopyWith(SetText value, $Res Function(SetText) then) =
      _$SetTextCopyWithImpl<$Res>;
}

class _$SetTextCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $SetTextCopyWith<$Res> {
  _$SetTextCopyWithImpl(SetText _value, $Res Function(SetText) _then)
      : super(_value, (v) => _then(v as SetText));

  @override
  SetText get _value => super._value as SetText;
}

class _$SetText implements SetText {
  _$SetText();

  @override
  String toString() {
    return 'AddCardEvent.setTextContent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return setTextContent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setTextContent != null) {
      return setTextContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return setTextContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setTextContent != null) {
      return setTextContent(this);
    }
    return orElse();
  }
}

abstract class SetText implements AddCardEvent {
  factory SetText() = _$SetText;
}

abstract class $SetImageCopyWith<$Res> {
  factory $SetImageCopyWith(SetImage value, $Res Function(SetImage) then) =
      _$SetImageCopyWithImpl<$Res>;
  $Res call({File image});
}

class _$SetImageCopyWithImpl<$Res> extends _$AddCardEventCopyWithImpl<$Res>
    implements $SetImageCopyWith<$Res> {
  _$SetImageCopyWithImpl(SetImage _value, $Res Function(SetImage) _then)
      : super(_value, (v) => _then(v as SetImage));

  @override
  SetImage get _value => super._value as SetImage;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(SetImage(
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

class _$SetImage implements SetImage {
  _$SetImage({@required this.image}) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'AddCardEvent.setImageContent(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetImage &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  $SetImageCopyWith<SetImage> get copyWith =>
      _$SetImageCopyWithImpl<SetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return setImageContent(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setImageContent != null) {
      return setImageContent(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return setImageContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setImageContent != null) {
      return setImageContent(this);
    }
    return orElse();
  }
}

abstract class SetImage implements AddCardEvent {
  factory SetImage({@required File image}) = _$SetImage;

  File get image;
  $SetImageCopyWith<SetImage> get copyWith;
}

abstract class $SaveChangesAndExitCopyWith<$Res> {
  factory $SaveChangesAndExitCopyWith(
          SaveChangesAndExit value, $Res Function(SaveChangesAndExit) then) =
      _$SaveChangesAndExitCopyWithImpl<$Res>;
}

class _$SaveChangesAndExitCopyWithImpl<$Res>
    extends _$AddCardEventCopyWithImpl<$Res>
    implements $SaveChangesAndExitCopyWith<$Res> {
  _$SaveChangesAndExitCopyWithImpl(
      SaveChangesAndExit _value, $Res Function(SaveChangesAndExit) _then)
      : super(_value, (v) => _then(v as SaveChangesAndExit));

  @override
  SaveChangesAndExit get _value => super._value as SaveChangesAndExit;
}

class _$SaveChangesAndExit implements SaveChangesAndExit {
  _$SaveChangesAndExit();

  @override
  String toString() {
    return 'AddCardEvent.saveChangesAndExit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveChangesAndExit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result rotateCard(),
    @required Result deleteCard(),
    @required Result changeIndex(int newIndex),
    @required Result questionChanged(MyDeckFile newQuestion),
    @required Result answerChanged(MyDeckFile newAnswer),
    @required Result setTextContent(),
    @required Result setImageContent(File image),
    @required Result saveChangesAndExit(),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return saveChangesAndExit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result rotateCard(),
    Result deleteCard(),
    Result changeIndex(int newIndex),
    Result questionChanged(MyDeckFile newQuestion),
    Result answerChanged(MyDeckFile newAnswer),
    Result setTextContent(),
    Result setImageContent(File image),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveChangesAndExit != null) {
      return saveChangesAndExit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result rotateCard(RotateCard value),
    @required Result deleteCard(DeleteCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result questionChanged(QuestionChanged value),
    @required Result answerChanged(AnswerChanged value),
    @required Result setTextContent(SetText value),
    @required Result setImageContent(SetImage value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(rotateCard != null);
    assert(deleteCard != null);
    assert(changeIndex != null);
    assert(questionChanged != null);
    assert(answerChanged != null);
    assert(setTextContent != null);
    assert(setImageContent != null);
    assert(saveChangesAndExit != null);
    return saveChangesAndExit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result rotateCard(RotateCard value),
    Result deleteCard(DeleteCard value),
    Result changeIndex(ChangeIndex value),
    Result questionChanged(QuestionChanged value),
    Result answerChanged(AnswerChanged value),
    Result setTextContent(SetText value),
    Result setImageContent(SetImage value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveChangesAndExit != null) {
      return saveChangesAndExit(this);
    }
    return orElse();
  }
}

abstract class SaveChangesAndExit implements AddCardEvent {
  factory SaveChangesAndExit() = _$SaveChangesAndExit;
}

class _$AddCardStateTearOff {
  const _$AddCardStateTearOff();

  _AddCardState call(
      {@required List<Card> sourceCards,
      @required int currentCardIndex,
      @required bool isQuestion,
      @required bool saveChangesAndExit}) {
    return _AddCardState(
      sourceCards: sourceCards,
      currentCardIndex: currentCardIndex,
      isQuestion: isQuestion,
      saveChangesAndExit: saveChangesAndExit,
    );
  }
}

// ignore: unused_element
const $AddCardState = _$AddCardStateTearOff();

mixin _$AddCardState {
  List<Card> get sourceCards;
  int get currentCardIndex;
  bool get isQuestion;
  bool get saveChangesAndExit;

  $AddCardStateCopyWith<AddCardState> get copyWith;
}

abstract class $AddCardStateCopyWith<$Res> {
  factory $AddCardStateCopyWith(
          AddCardState value, $Res Function(AddCardState) then) =
      _$AddCardStateCopyWithImpl<$Res>;
  $Res call(
      {List<Card> sourceCards,
      int currentCardIndex,
      bool isQuestion,
      bool saveChangesAndExit});
}

class _$AddCardStateCopyWithImpl<$Res> implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._value, this._then);

  final AddCardState _value;
  // ignore: unused_field
  final $Res Function(AddCardState) _then;

  @override
  $Res call({
    Object sourceCards = freezed,
    Object currentCardIndex = freezed,
    Object isQuestion = freezed,
    Object saveChangesAndExit = freezed,
  }) {
    return _then(_value.copyWith(
      sourceCards: sourceCards == freezed
          ? _value.sourceCards
          : sourceCards as List<Card>,
      currentCardIndex: currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      isQuestion:
          isQuestion == freezed ? _value.isQuestion : isQuestion as bool,
      saveChangesAndExit: saveChangesAndExit == freezed
          ? _value.saveChangesAndExit
          : saveChangesAndExit as bool,
    ));
  }
}

abstract class _$AddCardStateCopyWith<$Res>
    implements $AddCardStateCopyWith<$Res> {
  factory _$AddCardStateCopyWith(
          _AddCardState value, $Res Function(_AddCardState) then) =
      __$AddCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Card> sourceCards,
      int currentCardIndex,
      bool isQuestion,
      bool saveChangesAndExit});
}

class __$AddCardStateCopyWithImpl<$Res> extends _$AddCardStateCopyWithImpl<$Res>
    implements _$AddCardStateCopyWith<$Res> {
  __$AddCardStateCopyWithImpl(
      _AddCardState _value, $Res Function(_AddCardState) _then)
      : super(_value, (v) => _then(v as _AddCardState));

  @override
  _AddCardState get _value => super._value as _AddCardState;

  @override
  $Res call({
    Object sourceCards = freezed,
    Object currentCardIndex = freezed,
    Object isQuestion = freezed,
    Object saveChangesAndExit = freezed,
  }) {
    return _then(_AddCardState(
      sourceCards: sourceCards == freezed
          ? _value.sourceCards
          : sourceCards as List<Card>,
      currentCardIndex: currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      isQuestion:
          isQuestion == freezed ? _value.isQuestion : isQuestion as bool,
      saveChangesAndExit: saveChangesAndExit == freezed
          ? _value.saveChangesAndExit
          : saveChangesAndExit as bool,
    ));
  }
}

class _$_AddCardState implements _AddCardState {
  const _$_AddCardState(
      {@required this.sourceCards,
      @required this.currentCardIndex,
      @required this.isQuestion,
      @required this.saveChangesAndExit})
      : assert(sourceCards != null),
        assert(currentCardIndex != null),
        assert(isQuestion != null),
        assert(saveChangesAndExit != null);

  @override
  final List<Card> sourceCards;
  @override
  final int currentCardIndex;
  @override
  final bool isQuestion;
  @override
  final bool saveChangesAndExit;

  @override
  String toString() {
    return 'AddCardState(sourceCards: $sourceCards, currentCardIndex: $currentCardIndex, isQuestion: $isQuestion, saveChangesAndExit: $saveChangesAndExit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCardState &&
            (identical(other.sourceCards, sourceCards) ||
                const DeepCollectionEquality()
                    .equals(other.sourceCards, sourceCards)) &&
            (identical(other.currentCardIndex, currentCardIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentCardIndex, currentCardIndex)) &&
            (identical(other.isQuestion, isQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.isQuestion, isQuestion)) &&
            (identical(other.saveChangesAndExit, saveChangesAndExit) ||
                const DeepCollectionEquality()
                    .equals(other.saveChangesAndExit, saveChangesAndExit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sourceCards) ^
      const DeepCollectionEquality().hash(currentCardIndex) ^
      const DeepCollectionEquality().hash(isQuestion) ^
      const DeepCollectionEquality().hash(saveChangesAndExit);

  @override
  _$AddCardStateCopyWith<_AddCardState> get copyWith =>
      __$AddCardStateCopyWithImpl<_AddCardState>(this, _$identity);
}

abstract class _AddCardState implements AddCardState {
  const factory _AddCardState(
      {@required List<Card> sourceCards,
      @required int currentCardIndex,
      @required bool isQuestion,
      @required bool saveChangesAndExit}) = _$_AddCardState;

  @override
  List<Card> get sourceCards;
  @override
  int get currentCardIndex;
  @override
  bool get isQuestion;
  @override
  bool get saveChangesAndExit;
  @override
  _$AddCardStateCopyWith<_AddCardState> get copyWith;
}
