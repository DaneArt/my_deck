part of 'md_content_cubit.dart';

@freezed
abstract class MDContentState with _$MDContentState {
  factory MDContentState.initial() = MDImageStateInitial;
  factory MDContentState.loading() = MDImageStateLoading;
  factory MDContentState.error() = MDImageStateError;
  factory MDContentState.loaded(File file) = MDImageStateLoaded;
}
