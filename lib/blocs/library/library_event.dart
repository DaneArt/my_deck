part of 'library_bloc.dart';

@freezed
abstract class LibraryEvent with _$LibraryEvent {
  factory LibraryEvent.loadUserLibrary() = LoadUserLibrary;
}
