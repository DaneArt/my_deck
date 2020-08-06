// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Art`
  String get category_art {
    return Intl.message(
      'Art',
      name: 'category_art',
      desc: '',
      args: [],
    );
  }

  /// `Chemistry`
  String get category_chemistry {
    return Intl.message(
      'Chemistry',
      name: 'category_chemistry',
      desc: '',
      args: [],
    );
  }

  /// `Foreign Languages`
  String get category_FL {
    return Intl.message(
      'Foreign Languages',
      name: 'category_FL',
      desc: '',
      args: [],
    );
  }

  /// `IT`
  String get category_IT {
    return Intl.message(
      'IT',
      name: 'category_IT',
      desc: '',
      args: [],
    );
  }

  /// `Math`
  String get category_math {
    return Intl.message(
      'Math',
      name: 'category_math',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get category_others {
    return Intl.message(
      'Others',
      name: 'category_others',
      desc: '',
      args: [],
    );
  }

  /// `Physics`
  String get category_physics {
    return Intl.message(
      'Physics',
      name: 'category_physics',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get create_card {
    return Intl.message(
      'Card',
      name: 'create_card',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up to fill library with decks.`
  String get deck_call_to_sign_up {
    return Intl.message(
      'Sign Up to fill library with decks.',
      name: 'deck_call_to_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Can't save deck. Correct mistakes and try again.`
  String get editor_cant_save {
    return Intl.message(
      'Can\'t save deck. Correct mistakes and try again.',
      name: 'editor_cant_save',
      desc: '',
      args: [],
    );
  }

  /// `Oops, card collection is empty.`
  String get editor_cards_empty {
    return Intl.message(
      'Oops, card collection is empty.',
      name: 'editor_cards_empty',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get editor_category {
    return Intl.message(
      'Category',
      name: 'editor_category',
      desc: '',
      args: [],
    );
  }

  /// `Create deck`
  String get editor_create_deck {
    return Intl.message(
      'Create deck',
      name: 'editor_create_deck',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get editor_description {
    return Intl.message(
      'Description',
      name: 'editor_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter description(optional)`
  String get editor_description_enter {
    return Intl.message(
      'Enter description(optional)',
      name: 'editor_description_enter',
      desc: '',
      args: [],
    );
  }

  /// `Edit deck`
  String get editor_edit_deck {
    return Intl.message(
      'Edit deck',
      name: 'editor_edit_deck',
      desc: '',
      args: [],
    );
  }

  /// `Save error`
  String get editor_error_saving {
    return Intl.message(
      'Save error',
      name: 'editor_error_saving',
      desc: '',
      args: [],
    );
  }

  /// `Let's create a few!`
  String get editor_lets_create_card {
    return Intl.message(
      'Let\'s create a few!',
      name: 'editor_lets_create_card',
      desc: '',
      args: [],
    );
  }

  /// `No description`
  String get editor_no_description {
    return Intl.message(
      'No description',
      name: 'editor_no_description',
      desc: '',
      args: [],
    );
  }

  /// `No title`
  String get editor_no_title {
    return Intl.message(
      'No title',
      name: 'editor_no_title',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get editor_retry {
    return Intl.message(
      'Retry',
      name: 'editor_retry',
      desc: '',
      args: [],
    );
  }

  /// `Share deck?`
  String get editor_share {
    return Intl.message(
      'Share deck?',
      name: 'editor_share',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get editor_title {
    return Intl.message(
      'Title',
      name: 'editor_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter title*`
  String get editor_title_enter {
    return Intl.message(
      'Enter title*',
      name: 'editor_title_enter',
      desc: '',
      args: [],
    );
  }

  /// `Canselled by user.`
  String get error_auth_canselled_by_user {
    return Intl.message(
      'Canselled by user.',
      name: 'error_auth_canselled_by_user',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use.`
  String get error_auth_email_in_use {
    return Intl.message(
      'Email already in use.',
      name: 'error_auth_email_in_use',
      desc: '',
      args: [],
    );
  }

  /// `Session not valid.`
  String get error_auth_invalid_session {
    return Intl.message(
      'Session not valid.',
      name: 'error_auth_invalid_session',
      desc: '',
      args: [],
    );
  }

  /// `Network error.`
  String get error_auth_network_error {
    return Intl.message(
      'Network error.',
      name: 'error_auth_network_error',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection.`
  String get error_auth_no_internet {
    return Intl.message(
      'No internet connection.',
      name: 'error_auth_no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Username already in use.`
  String get error_auth_username_in_use {
    return Intl.message(
      'Username already in use.',
      name: 'error_auth_username_in_use',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password.`
  String get error_auth_wrong_password {
    return Intl.message(
      'Wrong password.',
      name: 'error_auth_wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `User not found.`
  String get error_user_not_found {
    return Intl.message(
      'User not found.',
      name: 'error_user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid.`
  String get error_value_email_incorrect {
    return Intl.message(
      'Email is invalid.',
      name: 'error_value_email_incorrect',
      desc: '',
      args: [],
    );
  }

  /// `File doesn't exists.`
  String get error_value_file_inexists {
    return Intl.message(
      'File doesn\'t exists.',
      name: 'error_value_file_inexists',
      desc: '',
      args: [],
    );
  }

  /// `Login could contain letters, numbers, '.' or '_'.`
  String get error_value_invalid_login {
    return Intl.message(
      'Login could contain letters, numbers, \'.\' or \'_\'.',
      name: 'error_value_invalid_login',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.`
  String get error_value_invalid_password {
    return Intl.message(
      'Password must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
      name: 'error_value_invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Title could contain letters, numbers, '.' or '_'.`
  String get error_value_invalid_title {
    return Intl.message(
      'Title could contain letters, numbers, \'.\' or \'_\'.',
      name: 'error_value_invalid_title',
      desc: '',
      args: [],
    );
  }

  /// `Username must be shorter than 30 characters.`
  String get error_value_long_login {
    return Intl.message(
      'Username must be shorter than 30 characters.',
      name: 'error_value_long_login',
      desc: '',
      args: [],
    );
  }

  /// `Password must be shorter than 24 characters.`
  String get error_value_long_password {
    return Intl.message(
      'Password must be shorter than 24 characters.',
      name: 'error_value_long_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be longer than 8 characters.`
  String get error_value_short_passwor {
    return Intl.message(
      'Password must be longer than 8 characters.',
      name: 'error_value_short_passwor',
      desc: '',
      args: [],
    );
  }

  /// `Title must be longer than 6 characters.`
  String get error_value_title_short {
    return Intl.message(
      'Title must be longer than 6 characters.',
      name: 'error_value_title_short',
      desc: '',
      args: [],
    );
  }

  /// `No image`
  String get image_no_image {
    return Intl.message(
      'No image',
      name: 'image_no_image',
      desc: '',
      args: [],
    );
  }

  /// `Pick deck avatar`
  String get image_pick_avatar {
    return Intl.message(
      'Pick deck avatar',
      name: 'image_pick_avatar',
      desc: '',
      args: [],
    );
  }

  /// `Pick from gallery`
  String get image_pick_gallery {
    return Intl.message(
      'Pick from gallery',
      name: 'image_pick_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture`
  String get image_pick_photo {
    return Intl.message(
      'Take a picture',
      name: 'image_pick_photo',
      desc: '',
      args: [],
    );
  }

  /// `Deck changed`
  String get library_deck_changed {
    return Intl.message(
      'Deck changed',
      name: 'library_deck_changed',
      desc: '',
      args: [],
    );
  }

  /// `Deck created`
  String get library_deck_created {
    return Intl.message(
      'Deck created',
      name: 'library_deck_created',
      desc: '',
      args: [],
    );
  }

  /// `Deck deleted`
  String get library_deck_deleted {
    return Intl.message(
      'Deck deleted',
      name: 'library_deck_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Sign In to create deck.`
  String get library_sign_in_to_create {
    return Intl.message(
      'Sign In to create deck.',
      name: 'library_sign_in_to_create',
      desc: '',
      args: [],
    );
  }

  /// `Library`
  String get library_title {
    return Intl.message(
      'Library',
      name: 'library_title',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get login_confirm {
    return Intl.message(
      'Confirm',
      name: 'login_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password*`
  String get login_confirm_password {
    return Intl.message(
      'Confirm password*',
      name: 'login_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get login_email_address {
    return Intl.message(
      'Email address',
      name: 'login_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Email or username`
  String get login_email_or_login {
    return Intl.message(
      'Email or username',
      name: 'login_email_or_login',
      desc: '',
      args: [],
    );
  }

  /// `Enter email.`
  String get login_enter_email {
    return Intl.message(
      'Enter email.',
      name: 'login_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter email or username.`
  String get login_enter_email_or_login {
    return Intl.message(
      'Enter email or username.',
      name: 'login_enter_email_or_login',
      desc: '',
      args: [],
    );
  }

  /// `Enter password*`
  String get login_enter_password {
    return Intl.message(
      'Enter password*',
      name: 'login_enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Here we go!`
  String get login_here_we_go {
    return Intl.message(
      'Here we go!',
      name: 'login_here_we_go',
      desc: '',
      args: [],
    );
  }

  /// `How should we call you?`
  String get login_how_call_you {
    return Intl.message(
      'How should we call you?',
      name: 'login_how_call_you',
      desc: '',
      args: [],
    );
  }

  /// `Password*`
  String get login_password {
    return Intl.message(
      'Password*',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get login_sign_in {
    return Intl.message(
      'Sign In',
      name: 'login_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN VIA GOOGLE`
  String get login_sign_in_google {
    return Intl.message(
      'SIGN IN VIA GOOGLE',
      name: 'login_sign_in_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get login_sign_up {
    return Intl.message(
      'Sign Up',
      name: 'login_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get login_username {
    return Intl.message(
      'Username',
      name: 'login_username',
      desc: '',
      args: [],
    );
  }

  /// `Answer`
  String get meta_answer {
    return Intl.message(
      'Answer',
      name: 'meta_answer',
      desc: '',
      args: [],
    );
  }

  /// `Cards`
  String get meta_cards {
    return Intl.message(
      'Cards',
      name: 'meta_cards',
      desc: '',
      args: [],
    );
  }

  /// `Deck`
  String get meta_deck {
    return Intl.message(
      'Deck',
      name: 'meta_deck',
      desc: '',
      args: [],
    );
  }

  /// `Decks`
  String get meta_decks {
    return Intl.message(
      'Decks',
      name: 'meta_decks',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get meta_error {
    return Intl.message(
      'Error',
      name: 'meta_error',
      desc: '',
      args: [],
    );
  }

  /// `No decks`
  String get meta_no_decks {
    return Intl.message(
      'No decks',
      name: 'meta_no_decks',
      desc: '',
      args: [],
    );
  }

  /// `No cards`
  String get meta_no_items {
    return Intl.message(
      'No cards',
      name: 'meta_no_items',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get meta_question {
    return Intl.message(
      'Question',
      name: 'meta_question',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get meta_refresh {
    return Intl.message(
      'Refresh',
      name: 'meta_refresh',
      desc: '',
      args: [],
    );
  }

  /// `Swipe down to refresh.`
  String get meta_swipe_to_refresh {
    return Intl.message(
      'Swipe down to refresh.',
      name: 'meta_swipe_to_refresh',
      desc: '',
      args: [],
    );
  }

  /// `Subscribtions:`
  String get profile_subscribtions {
    return Intl.message(
      'Subscribtions:',
      name: 'profile_subscribtions',
      desc: '',
      args: [],
    );
  }

  /// `Subsribers:`
  String get profile_subsribers {
    return Intl.message(
      'Subsribers:',
      name: 'profile_subsribers',
      desc: '',
      args: [],
    );
  }

  /// `'s Profile`
  String get profile_title {
    return Intl.message(
      '\'s Profile',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Community Decks`
  String get social_decks_chart {
    return Intl.message(
      'Community Decks',
      name: 'social_decks_chart',
      desc: '',
      args: [],
    );
  }

  /// `More...`
  String get social_more {
    return Intl.message(
      'More...',
      name: 'social_more',
      desc: '',
      args: [],
    );
  }

  /// `TRAINING`
  String get train {
    return Intl.message(
      'TRAINING',
      name: 'train',
      desc: '',
      args: [],
    );
  }

  /// `cards`
  String get train_end_cards {
    return Intl.message(
      'cards',
      name: 'train_end_cards',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get train_end_conratulations {
    return Intl.message(
      'Congratulations!',
      name: 'train_end_conratulations',
      desc: '',
      args: [],
    );
  }

  /// `{decks, plural, zero{decks} one{deck} other{decks}}`
  String train_end_decks(num decks) {
    return Intl.plural(
      decks,
      zero: 'decks',
      one: 'deck',
      other: 'decks',
      name: 'train_end_decks',
      desc: '',
      args: [decks],
    );
  }

  /// `in`
  String get train_end_in {
    return Intl.message(
      'in',
      name: 'train_end_in',
      desc: '',
      args: [],
    );
  }

  /// `You've successfully learned`
  String get train_end_learned {
    return Intl.message(
      'You\'ve successfully learned',
      name: 'train_end_learned',
      desc: 'tr',
      args: [],
    );
  }

  /// `No trainable decks`
  String get train_no_trainable_decks {
    return Intl.message(
      'No trainable decks',
      name: 'train_no_trainable_decks',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}