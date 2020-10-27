// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'card_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CardEditorEventTearOff {
  const _$CardEditorEventTearOff();

  DeleteCard deleteCard() {
    return DeleteCard();
  }

  AddCard addCard() {
    return AddCard();
  }

  ChangeIndex changeIndex({@required int newIndex}) {
    return ChangeIndex(
      newIndex: newIndex,
    );
  }

  ChangeStatus changeStatus() {
    return ChangeStatus();
  }

  SetContent setContent(MDFile file) {
    return SetContent(
      file,
    );
  }

  BackupCubits backupCubits() {
    return BackupCubits();
  }

  UndoEdits undoEdits() {
    return UndoEdits();
  }

  SaveChangesAndExit saveChangesAndExit() {
    return SaveChangesAndExit();
  }
}

// ignore: unused_element
const $CardEditorEvent = _$CardEditorEventTearOff();

mixin _$CardEditorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  });
}

abstract class $CardEditorEventCopyWith<$Res> {
  factory $CardEditorEventCopyWith(
          CardEditorEvent value, $Res Function(CardEditorEvent) then) =
      _$CardEditorEventCopyWithImpl<$Res>;
}

class _$CardEditorEventCopyWithImpl<$Res>
    implements $CardEditorEventCopyWith<$Res> {
  _$CardEditorEventCopyWithImpl(this._value, this._then);

  final CardEditorEvent _value;
  // ignore: unused_field
  final $Res Function(CardEditorEvent) _then;
}

abstract class $DeleteCardCopyWith<$Res> {
  factory $DeleteCardCopyWith(
          DeleteCard value, $Res Function(DeleteCard) then) =
      _$DeleteCardCopyWithImpl<$Res>;
}

class _$DeleteCardCopyWithImpl<$Res> extends _$CardEditorEventCopyWithImpl<$Res>
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
    return 'CardEditorEvent.deleteCard()';
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
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return deleteCard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
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
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
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

abstract class DeleteCard implements CardEditorEvent {
  factory DeleteCard() = _$DeleteCard;
}

abstract class $AddCardCopyWith<$Res> {
  factory $AddCardCopyWith(AddCard value, $Res Function(AddCard) then) =
      _$AddCardCopyWithImpl<$Res>;
}

class _$AddCardCopyWithImpl<$Res> extends _$CardEditorEventCopyWithImpl<$Res>
    implements $AddCardCopyWith<$Res> {
  _$AddCardCopyWithImpl(AddCard _value, $Res Function(AddCard) _then)
      : super(_value, (v) => _then(v as AddCard));

  @override
  AddCard get _value => super._value as AddCard;
}

class _$AddCard implements AddCard {
  _$AddCard();

  @override
  String toString() {
    return 'CardEditorEvent.addCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return addCard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCard != null) {
      return addCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class AddCard implements CardEditorEvent {
  factory AddCard() = _$AddCard;
}

abstract class $ChangeIndexCopyWith<$Res> {
  factory $ChangeIndexCopyWith(
          ChangeIndex value, $Res Function(ChangeIndex) then) =
      _$ChangeIndexCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

class _$ChangeIndexCopyWithImpl<$Res>
    extends _$CardEditorEventCopyWithImpl<$Res>
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
    return 'CardEditorEvent.changeIndex(newIndex: $newIndex)';
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
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return changeIndex(newIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
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
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
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

abstract class ChangeIndex implements CardEditorEvent {
  factory ChangeIndex({@required int newIndex}) = _$ChangeIndex;

  int get newIndex;
  $ChangeIndexCopyWith<ChangeIndex> get copyWith;
}

abstract class $ChangeStatusCopyWith<$Res> {
  factory $ChangeStatusCopyWith(
          ChangeStatus value, $Res Function(ChangeStatus) then) =
      _$ChangeStatusCopyWithImpl<$Res>;
}

class _$ChangeStatusCopyWithImpl<$Res>
    extends _$CardEditorEventCopyWithImpl<$Res>
    implements $ChangeStatusCopyWith<$Res> {
  _$ChangeStatusCopyWithImpl(
      ChangeStatus _value, $Res Function(ChangeStatus) _then)
      : super(_value, (v) => _then(v as ChangeStatus));

  @override
  ChangeStatus get _value => super._value as ChangeStatus;
}

class _$ChangeStatus implements ChangeStatus {
  _$ChangeStatus();

  @override
  String toString() {
    return 'CardEditorEvent.changeStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangeStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return changeStatus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeStatus != null) {
      return changeStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeStatus implements CardEditorEvent {
  factory ChangeStatus() = _$ChangeStatus;
}

abstract class $SetContentCopyWith<$Res> {
  factory $SetContentCopyWith(
          SetContent value, $Res Function(SetContent) then) =
      _$SetContentCopyWithImpl<$Res>;
  $Res call({MDFile file});
}

class _$SetContentCopyWithImpl<$Res> extends _$CardEditorEventCopyWithImpl<$Res>
    implements $SetContentCopyWith<$Res> {
  _$SetContentCopyWithImpl(SetContent _value, $Res Function(SetContent) _then)
      : super(_value, (v) => _then(v as SetContent));

  @override
  SetContent get _value => super._value as SetContent;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(SetContent(
      file == freezed ? _value.file : file as MDFile,
    ));
  }
}

class _$SetContent implements SetContent {
  _$SetContent(this.file) : assert(file != null);

  @override
  final MDFile file;

  @override
  String toString() {
    return 'CardEditorEvent.setContent(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetContent &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  $SetContentCopyWith<SetContent> get copyWith =>
      _$SetContentCopyWithImpl<SetContent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return setContent(file);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setContent != null) {
      return setContent(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return setContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setContent != null) {
      return setContent(this);
    }
    return orElse();
  }
}

abstract class SetContent implements CardEditorEvent {
  factory SetContent(MDFile file) = _$SetContent;

  MDFile get file;
  $SetContentCopyWith<SetContent> get copyWith;
}

abstract class $BackupCubitsCopyWith<$Res> {
  factory $BackupCubitsCopyWith(
          BackupCubits value, $Res Function(BackupCubits) then) =
      _$BackupCubitsCopyWithImpl<$Res>;
}

class _$BackupCubitsCopyWithImpl<$Res>
    extends _$CardEditorEventCopyWithImpl<$Res>
    implements $BackupCubitsCopyWith<$Res> {
  _$BackupCubitsCopyWithImpl(
      BackupCubits _value, $Res Function(BackupCubits) _then)
      : super(_value, (v) => _then(v as BackupCubits));

  @override
  BackupCubits get _value => super._value as BackupCubits;
}

class _$BackupCubits implements BackupCubits {
  _$BackupCubits();

  @override
  String toString() {
    return 'CardEditorEvent.backupCubits()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BackupCubits);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return backupCubits();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backupCubits != null) {
      return backupCubits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return backupCubits(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backupCubits != null) {
      return backupCubits(this);
    }
    return orElse();
  }
}

abstract class BackupCubits implements CardEditorEvent {
  factory BackupCubits() = _$BackupCubits;
}

abstract class $UndoEditsCopyWith<$Res> {
  factory $UndoEditsCopyWith(UndoEdits value, $Res Function(UndoEdits) then) =
      _$UndoEditsCopyWithImpl<$Res>;
}

class _$UndoEditsCopyWithImpl<$Res> extends _$CardEditorEventCopyWithImpl<$Res>
    implements $UndoEditsCopyWith<$Res> {
  _$UndoEditsCopyWithImpl(UndoEdits _value, $Res Function(UndoEdits) _then)
      : super(_value, (v) => _then(v as UndoEdits));

  @override
  UndoEdits get _value => super._value as UndoEdits;
}

class _$UndoEdits implements UndoEdits {
  _$UndoEdits();

  @override
  String toString() {
    return 'CardEditorEvent.undoEdits()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UndoEdits);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return undoEdits();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
    Result saveChangesAndExit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undoEdits != null) {
      return undoEdits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return undoEdits(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
    Result saveChangesAndExit(SaveChangesAndExit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undoEdits != null) {
      return undoEdits(this);
    }
    return orElse();
  }
}

abstract class UndoEdits implements CardEditorEvent {
  factory UndoEdits() = _$UndoEdits;
}

abstract class $SaveChangesAndExitCopyWith<$Res> {
  factory $SaveChangesAndExitCopyWith(
          SaveChangesAndExit value, $Res Function(SaveChangesAndExit) then) =
      _$SaveChangesAndExitCopyWithImpl<$Res>;
}

class _$SaveChangesAndExitCopyWithImpl<$Res>
    extends _$CardEditorEventCopyWithImpl<$Res>
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
    return 'CardEditorEvent.saveChangesAndExit()';
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
    @required Result deleteCard(),
    @required Result addCard(),
    @required Result changeIndex(int newIndex),
    @required Result changeStatus(),
    @required Result setContent(MDFile file),
    @required Result backupCubits(),
    @required Result undoEdits(),
    @required Result saveChangesAndExit(),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return saveChangesAndExit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteCard(),
    Result addCard(),
    Result changeIndex(int newIndex),
    Result changeStatus(),
    Result setContent(MDFile file),
    Result backupCubits(),
    Result undoEdits(),
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
    @required Result deleteCard(DeleteCard value),
    @required Result addCard(AddCard value),
    @required Result changeIndex(ChangeIndex value),
    @required Result changeStatus(ChangeStatus value),
    @required Result setContent(SetContent value),
    @required Result backupCubits(BackupCubits value),
    @required Result undoEdits(UndoEdits value),
    @required Result saveChangesAndExit(SaveChangesAndExit value),
  }) {
    assert(deleteCard != null);
    assert(addCard != null);
    assert(changeIndex != null);
    assert(changeStatus != null);
    assert(setContent != null);
    assert(backupCubits != null);
    assert(undoEdits != null);
    assert(saveChangesAndExit != null);
    return saveChangesAndExit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteCard(DeleteCard value),
    Result addCard(AddCard value),
    Result changeIndex(ChangeIndex value),
    Result changeStatus(ChangeStatus value),
    Result setContent(SetContent value),
    Result backupCubits(BackupCubits value),
    Result undoEdits(UndoEdits value),
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

abstract class SaveChangesAndExit implements CardEditorEvent {
  factory SaveChangesAndExit() = _$SaveChangesAndExit;
}

class _$CardEditorStateTearOff {
  const _$CardEditorStateTearOff();

  _CardEditorState call(
      {@required int currentCardIndex,
      @required List<CECardCubit> cardCubits,
      @required List<CECardCubit> backedUpCubits,
      @required bool rebuild,
      @required AddDeckStatus status,
      @required AddDeckGoal goal,
      @required bool saveChangesAndExit}) {
    return _CardEditorState(
      currentCardIndex: currentCardIndex,
      cardCubits: cardCubits,
      backedUpCubits: backedUpCubits,
      rebuild: rebuild,
      status: status,
      goal: goal,
      saveChangesAndExit: saveChangesAndExit,
    );
  }
}

// ignore: unused_element
const $CardEditorState = _$CardEditorStateTearOff();

mixin _$CardEditorState {
  int get currentCardIndex;
  List<CECardCubit> get cardCubits;
  List<CECardCubit> get backedUpCubits;
  bool get rebuild;
  AddDeckStatus get status;
  AddDeckGoal get goal;
  bool get saveChangesAndExit;

  $CardEditorStateCopyWith<CardEditorState> get copyWith;
}

abstract class $CardEditorStateCopyWith<$Res> {
  factory $CardEditorStateCopyWith(
          CardEditorState value, $Res Function(CardEditorState) then) =
      _$CardEditorStateCopyWithImpl<$Res>;
  $Res call(
      {int currentCardIndex,
      List<CECardCubit> cardCubits,
      List<CECardCubit> backedUpCubits,
      bool rebuild,
      AddDeckStatus status,
      AddDeckGoal goal,
      bool saveChangesAndExit});
}

class _$CardEditorStateCopyWithImpl<$Res>
    implements $CardEditorStateCopyWith<$Res> {
  _$CardEditorStateCopyWithImpl(this._value, this._then);

  final CardEditorState _value;
  // ignore: unused_field
  final $Res Function(CardEditorState) _then;

  @override
  $Res call({
    Object currentCardIndex = freezed,
    Object cardCubits = freezed,
    Object backedUpCubits = freezed,
    Object rebuild = freezed,
    Object status = freezed,
    Object goal = freezed,
    Object saveChangesAndExit = freezed,
  }) {
    return _then(_value.copyWith(
      currentCardIndex: currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      cardCubits: cardCubits == freezed
          ? _value.cardCubits
          : cardCubits as List<CECardCubit>,
      backedUpCubits: backedUpCubits == freezed
          ? _value.backedUpCubits
          : backedUpCubits as List<CECardCubit>,
      rebuild: rebuild == freezed ? _value.rebuild : rebuild as bool,
      status: status == freezed ? _value.status : status as AddDeckStatus,
      goal: goal == freezed ? _value.goal : goal as AddDeckGoal,
      saveChangesAndExit: saveChangesAndExit == freezed
          ? _value.saveChangesAndExit
          : saveChangesAndExit as bool,
    ));
  }
}

abstract class _$CardEditorStateCopyWith<$Res>
    implements $CardEditorStateCopyWith<$Res> {
  factory _$CardEditorStateCopyWith(
          _CardEditorState value, $Res Function(_CardEditorState) then) =
      __$CardEditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentCardIndex,
      List<CECardCubit> cardCubits,
      List<CECardCubit> backedUpCubits,
      bool rebuild,
      AddDeckStatus status,
      AddDeckGoal goal,
      bool saveChangesAndExit});
}

class __$CardEditorStateCopyWithImpl<$Res>
    extends _$CardEditorStateCopyWithImpl<$Res>
    implements _$CardEditorStateCopyWith<$Res> {
  __$CardEditorStateCopyWithImpl(
      _CardEditorState _value, $Res Function(_CardEditorState) _then)
      : super(_value, (v) => _then(v as _CardEditorState));

  @override
  _CardEditorState get _value => super._value as _CardEditorState;

  @override
  $Res call({
    Object currentCardIndex = freezed,
    Object cardCubits = freezed,
    Object backedUpCubits = freezed,
    Object rebuild = freezed,
    Object status = freezed,
    Object goal = freezed,
    Object saveChangesAndExit = freezed,
  }) {
    return _then(_CardEditorState(
      currentCardIndex: currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      cardCubits: cardCubits == freezed
          ? _value.cardCubits
          : cardCubits as List<CECardCubit>,
      backedUpCubits: backedUpCubits == freezed
          ? _value.backedUpCubits
          : backedUpCubits as List<CECardCubit>,
      rebuild: rebuild == freezed ? _value.rebuild : rebuild as bool,
      status: status == freezed ? _value.status : status as AddDeckStatus,
      goal: goal == freezed ? _value.goal : goal as AddDeckGoal,
      saveChangesAndExit: saveChangesAndExit == freezed
          ? _value.saveChangesAndExit
          : saveChangesAndExit as bool,
    ));
  }
}

class _$_CardEditorState implements _CardEditorState {
  const _$_CardEditorState(
      {@required this.currentCardIndex,
      @required this.cardCubits,
      @required this.backedUpCubits,
      @required this.rebuild,
      @required this.status,
      @required this.goal,
      @required this.saveChangesAndExit})
      : assert(currentCardIndex != null),
        assert(cardCubits != null),
        assert(backedUpCubits != null),
        assert(rebuild != null),
        assert(status != null),
        assert(goal != null),
        assert(saveChangesAndExit != null);

  @override
  final int currentCardIndex;
  @override
  final List<CECardCubit> cardCubits;
  @override
  final List<CECardCubit> backedUpCubits;
  @override
  final bool rebuild;
  @override
  final AddDeckStatus status;
  @override
  final AddDeckGoal goal;
  @override
  final bool saveChangesAndExit;

  @override
  String toString() {
    return 'CardEditorState(currentCardIndex: $currentCardIndex, cardCubits: $cardCubits, backedUpCubits: $backedUpCubits, rebuild: $rebuild, status: $status, goal: $goal, saveChangesAndExit: $saveChangesAndExit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardEditorState &&
            (identical(other.currentCardIndex, currentCardIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentCardIndex, currentCardIndex)) &&
            (identical(other.cardCubits, cardCubits) ||
                const DeepCollectionEquality()
                    .equals(other.cardCubits, cardCubits)) &&
            (identical(other.backedUpCubits, backedUpCubits) ||
                const DeepCollectionEquality()
                    .equals(other.backedUpCubits, backedUpCubits)) &&
            (identical(other.rebuild, rebuild) ||
                const DeepCollectionEquality()
                    .equals(other.rebuild, rebuild)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.saveChangesAndExit, saveChangesAndExit) ||
                const DeepCollectionEquality()
                    .equals(other.saveChangesAndExit, saveChangesAndExit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentCardIndex) ^
      const DeepCollectionEquality().hash(cardCubits) ^
      const DeepCollectionEquality().hash(backedUpCubits) ^
      const DeepCollectionEquality().hash(rebuild) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(saveChangesAndExit);

  @override
  _$CardEditorStateCopyWith<_CardEditorState> get copyWith =>
      __$CardEditorStateCopyWithImpl<_CardEditorState>(this, _$identity);
}

abstract class _CardEditorState implements CardEditorState {
  const factory _CardEditorState(
      {@required int currentCardIndex,
      @required List<CECardCubit> cardCubits,
      @required List<CECardCubit> backedUpCubits,
      @required bool rebuild,
      @required AddDeckStatus status,
      @required AddDeckGoal goal,
      @required bool saveChangesAndExit}) = _$_CardEditorState;

  @override
  int get currentCardIndex;
  @override
  List<CECardCubit> get cardCubits;
  @override
  List<CECardCubit> get backedUpCubits;
  @override
  bool get rebuild;
  @override
  AddDeckStatus get status;
  @override
  AddDeckGoal get goal;
  @override
  bool get saveChangesAndExit;
  @override
  _$CardEditorStateCopyWith<_CardEditorState> get copyWith;
}
