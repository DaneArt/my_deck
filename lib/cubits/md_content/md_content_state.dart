part of 'md_content_cubit.dart';

@freezed
abstract class MDContentState<T> with _$MDContentState<T> {
  factory MDContentState.initial() = MDContentStateInitial<T>;
  factory MDContentState.loading() = MDContentStateLoading<T>;
  factory MDContentState.error() = MDContentStateError<T>;
  factory MDContentState.loaded(T content) = MDContentStateLoaded<T>;
}
