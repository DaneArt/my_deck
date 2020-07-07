// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(decks) => "${Intl.plural(decks, zero: 'decks', one: 'deck', other: 'decks')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "category_FL" : MessageLookupByLibrary.simpleMessage("Foreign Languages"),
    "category_IT" : MessageLookupByLibrary.simpleMessage("IT"),
    "category_art" : MessageLookupByLibrary.simpleMessage("Art"),
    "category_chemistry" : MessageLookupByLibrary.simpleMessage("Chemistry"),
    "category_math" : MessageLookupByLibrary.simpleMessage("Math"),
    "category_others" : MessageLookupByLibrary.simpleMessage("Others"),
    "category_physics" : MessageLookupByLibrary.simpleMessage("Physics"),
    "create_card" : MessageLookupByLibrary.simpleMessage("Card"),
    "editor_cant_save" : MessageLookupByLibrary.simpleMessage("Can\'t save deck. Correct mistakes and try again."),
    "editor_cards_empty" : MessageLookupByLibrary.simpleMessage("Oops, card collection is empty."),
    "editor_category" : MessageLookupByLibrary.simpleMessage("Category"),
    "editor_create_deck" : MessageLookupByLibrary.simpleMessage("Create deck"),
    "editor_description" : MessageLookupByLibrary.simpleMessage("Description"),
    "editor_description_enter" : MessageLookupByLibrary.simpleMessage("Enter description(optional)"),
    "editor_edit_deck" : MessageLookupByLibrary.simpleMessage("Edit deck"),
    "editor_error_saving" : MessageLookupByLibrary.simpleMessage("Save error"),
    "editor_lets_create_card" : MessageLookupByLibrary.simpleMessage("Let\'s create a few!"),
    "editor_no_description" : MessageLookupByLibrary.simpleMessage("No description"),
    "editor_no_title" : MessageLookupByLibrary.simpleMessage("No title"),
    "editor_retry" : MessageLookupByLibrary.simpleMessage("Retry"),
    "editor_share" : MessageLookupByLibrary.simpleMessage("Share deck?"),
    "editor_title" : MessageLookupByLibrary.simpleMessage("Title"),
    "editor_title_enter" : MessageLookupByLibrary.simpleMessage("Enter title*"),
    "error_auth_canselled_by_user" : MessageLookupByLibrary.simpleMessage("Canselled by user."),
    "error_auth_email_in_use" : MessageLookupByLibrary.simpleMessage("Email already in use."),
    "error_auth_invalid_session" : MessageLookupByLibrary.simpleMessage("Session not valid."),
    "error_auth_network_error" : MessageLookupByLibrary.simpleMessage("Network error."),
    "error_auth_no_internet" : MessageLookupByLibrary.simpleMessage("No internet connection."),
    "error_auth_username_in_use" : MessageLookupByLibrary.simpleMessage("Username already in use."),
    "error_auth_wrong_password" : MessageLookupByLibrary.simpleMessage("Wrong password."),
    "error_user_not_found" : MessageLookupByLibrary.simpleMessage("User not found."),
    "error_value_email_incorrect" : MessageLookupByLibrary.simpleMessage("Email is invalid."),
    "error_value_file_inexists" : MessageLookupByLibrary.simpleMessage("File doesn\'t exists."),
    "error_value_invalid_login" : MessageLookupByLibrary.simpleMessage("Login could contain letters, numbers, \'.\' or \'_\'."),
    "error_value_invalid_password" : MessageLookupByLibrary.simpleMessage("Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter."),
    "error_value_invalid_title" : MessageLookupByLibrary.simpleMessage("Title could contain letters, numbers, \'.\' or \'_\'."),
    "error_value_long_login" : MessageLookupByLibrary.simpleMessage("Username must be shorter than 30 characters."),
    "error_value_long_password" : MessageLookupByLibrary.simpleMessage("Password must be shorter than 24 characters."),
    "error_value_short_passwor" : MessageLookupByLibrary.simpleMessage("Password must be longer than 8 characters."),
    "error_value_title_short" : MessageLookupByLibrary.simpleMessage("Title must be longer than 6 characters."),
    "image_no_image" : MessageLookupByLibrary.simpleMessage("No image"),
    "image_pick_avatar" : MessageLookupByLibrary.simpleMessage("Pick deck avatar"),
    "image_pick_gallery" : MessageLookupByLibrary.simpleMessage("Pick from gallery"),
    "image_pick_photo" : MessageLookupByLibrary.simpleMessage("Take a picture"),
    "library_deck_changed" : MessageLookupByLibrary.simpleMessage("Deck changed"),
    "library_deck_created" : MessageLookupByLibrary.simpleMessage("Deck created"),
    "library_deck_deleted" : MessageLookupByLibrary.simpleMessage("Deck deleted"),
    "library_title" : MessageLookupByLibrary.simpleMessage("\'s Library"),
    "login_confirm" : MessageLookupByLibrary.simpleMessage("Confirm"),
    "login_confirm_password" : MessageLookupByLibrary.simpleMessage("Confirm password*"),
    "login_email_address" : MessageLookupByLibrary.simpleMessage("Email address"),
    "login_email_or_login" : MessageLookupByLibrary.simpleMessage("Email or username"),
    "login_enter_email" : MessageLookupByLibrary.simpleMessage("Enter email."),
    "login_enter_email_or_login" : MessageLookupByLibrary.simpleMessage("Enter email or username."),
    "login_enter_password" : MessageLookupByLibrary.simpleMessage("Enter password*"),
    "login_here_we_go" : MessageLookupByLibrary.simpleMessage("Here we go!"),
    "login_how_call_you" : MessageLookupByLibrary.simpleMessage("How should we call you?"),
    "login_password" : MessageLookupByLibrary.simpleMessage("Password*"),
    "login_sign_in" : MessageLookupByLibrary.simpleMessage("SIGN IN"),
    "login_sign_in_google" : MessageLookupByLibrary.simpleMessage("SIGN IN VIA GOOGLE"),
    "login_sign_up" : MessageLookupByLibrary.simpleMessage("SIGN UP"),
    "login_username" : MessageLookupByLibrary.simpleMessage("Username"),
    "meta_answer" : MessageLookupByLibrary.simpleMessage("Answer"),
    "meta_cards" : MessageLookupByLibrary.simpleMessage("Cards"),
    "meta_deck" : MessageLookupByLibrary.simpleMessage("Deck"),
    "meta_decks" : MessageLookupByLibrary.simpleMessage("Decks"),
    "meta_error" : MessageLookupByLibrary.simpleMessage("Error"),
    "meta_no_decks" : MessageLookupByLibrary.simpleMessage("No decks"),
    "meta_no_items" : MessageLookupByLibrary.simpleMessage("No cards"),
    "meta_question" : MessageLookupByLibrary.simpleMessage("Question"),
    "meta_refresh" : MessageLookupByLibrary.simpleMessage("Refresh"),
    "meta_swipe_to_refresh" : MessageLookupByLibrary.simpleMessage("Swipe down to refresh."),
    "profile_subscribtions" : MessageLookupByLibrary.simpleMessage("Subscribtions:"),
    "profile_subsribers" : MessageLookupByLibrary.simpleMessage("Subsribers:"),
    "profile_title" : MessageLookupByLibrary.simpleMessage("\'s Profile"),
    "social_decks_chart" : MessageLookupByLibrary.simpleMessage("Community Decks"),
    "social_more" : MessageLookupByLibrary.simpleMessage("More..."),
    "train" : MessageLookupByLibrary.simpleMessage("TRAINING"),
    "train_end_cards" : MessageLookupByLibrary.simpleMessage("cards"),
    "train_end_conratulations" : MessageLookupByLibrary.simpleMessage("Congratulations!"),
    "train_end_decks" : m0,
    "train_end_in" : MessageLookupByLibrary.simpleMessage("in"),
    "train_end_learned" : MessageLookupByLibrary.simpleMessage("You\'ve successfully learned"),
    "train_no_trainable_decks" : MessageLookupByLibrary.simpleMessage("No trainable decks")
  };
}
