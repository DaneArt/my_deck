// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static m0(decks) => "${Intl.plural(decks, zero: 'колод', one: 'колоде', few: 'колодах', many: 'колодах', other: 'колодах')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "category_FL" : MessageLookupByLibrary.simpleMessage("Иностранные языки"),
    "category_IT" : MessageLookupByLibrary.simpleMessage("IT"),
    "category_art" : MessageLookupByLibrary.simpleMessage("Искусство"),
    "category_chemistry" : MessageLookupByLibrary.simpleMessage("Химия"),
    "category_math" : MessageLookupByLibrary.simpleMessage("Математика"),
    "category_others" : MessageLookupByLibrary.simpleMessage("Остальное"),
    "category_physics" : MessageLookupByLibrary.simpleMessage("Физика"),
    "create_card" : MessageLookupByLibrary.simpleMessage("Карту"),
    "editor_cant_save" : MessageLookupByLibrary.simpleMessage("Нельзя сохранить колоду. Исправьте ошибки и попробуйте снова."),
    "editor_cards_empty" : MessageLookupByLibrary.simpleMessage("Упс, коллекция карточек выглядит пустой."),
    "editor_category" : MessageLookupByLibrary.simpleMessage("Категория"),
    "editor_create_deck" : MessageLookupByLibrary.simpleMessage("Создать колоду"),
    "editor_description" : MessageLookupByLibrary.simpleMessage("Описание"),
    "editor_description_enter" : MessageLookupByLibrary.simpleMessage("Введите описание(не обязательно)"),
    "editor_edit_deck" : MessageLookupByLibrary.simpleMessage("Редактировать колоду"),
    "editor_error_saving" : MessageLookupByLibrary.simpleMessage("Ошибка сохранения"),
    "editor_lets_create_card" : MessageLookupByLibrary.simpleMessage("Давайте создадим несколько!"),
    "editor_no_description" : MessageLookupByLibrary.simpleMessage("Описание отсутствует"),
    "editor_no_title" : MessageLookupByLibrary.simpleMessage("Название отсутствует"),
    "editor_retry" : MessageLookupByLibrary.simpleMessage("Повторить"),
    "editor_share" : MessageLookupByLibrary.simpleMessage("Поделиться колодой?"),
    "editor_title" : MessageLookupByLibrary.simpleMessage("Название"),
    "editor_title_enter" : MessageLookupByLibrary.simpleMessage("Введите название*"),
    "error_auth_canselled_by_user" : MessageLookupByLibrary.simpleMessage("Отменено пользователем."),
    "error_auth_email_in_use" : MessageLookupByLibrary.simpleMessage("Адрес электронной почты уже используется."),
    "error_auth_invalid_session" : MessageLookupByLibrary.simpleMessage("Недопустимая сессия."),
    "error_auth_network_error" : MessageLookupByLibrary.simpleMessage("Ошибка сети."),
    "error_auth_no_internet" : MessageLookupByLibrary.simpleMessage("Отсутствует подключение к интернету."),
    "error_auth_username_in_use" : MessageLookupByLibrary.simpleMessage("Имя пользователя занято."),
    "error_auth_wrong_password" : MessageLookupByLibrary.simpleMessage("Неверный пароль."),
    "error_user_not_found" : MessageLookupByLibrary.simpleMessage("Пользователь не найден."),
    "error_value_email_incorrect" : MessageLookupByLibrary.simpleMessage("Недопустимый адрес электронной почты."),
    "error_value_file_inexists" : MessageLookupByLibrary.simpleMessage("Файл не существует."),
    "error_value_invalid_login" : MessageLookupByLibrary.simpleMessage("Логин может содержать буквы, цифры, \'.\' или \'_\'."),
    "error_value_invalid_password" : MessageLookupByLibrary.simpleMessage("Паслод должен содержать не менее 1 числа, 1 буквы верхнего регистра и 1 буквы нижнего регистра."),
    "error_value_invalid_title" : MessageLookupByLibrary.simpleMessage("Название может содержать буквы, цифры, \'.\' или \'_\'."),
    "error_value_long_login" : MessageLookupByLibrary.simpleMessage("Имя пользователя должно быть короче 30 символов."),
    "error_value_long_password" : MessageLookupByLibrary.simpleMessage("Пароль должен быть короче 24 символов."),
    "error_value_short_passwor" : MessageLookupByLibrary.simpleMessage("Длина пароля должна превышать 8 символов."),
    "error_value_title_short" : MessageLookupByLibrary.simpleMessage(" Название должно быть длиннее 6 символов."),
    "image_no_image" : MessageLookupByLibrary.simpleMessage("Нет изображения"),
    "image_pick_avatar" : MessageLookupByLibrary.simpleMessage("Выбрать аватар колоды"),
    "image_pick_gallery" : MessageLookupByLibrary.simpleMessage("Выбрать из галереи"),
    "image_pick_photo" : MessageLookupByLibrary.simpleMessage("Сделать фото"),
    "library_deck_changed" : MessageLookupByLibrary.simpleMessage("Колода изменена"),
    "library_deck_created" : MessageLookupByLibrary.simpleMessage("Колода создана"),
    "library_deck_deleted" : MessageLookupByLibrary.simpleMessage("Колода удалена"),
    "library_title" : MessageLookupByLibrary.simpleMessage("Библиотека"),
    "login_confirm" : MessageLookupByLibrary.simpleMessage("Подтвердить"),
    "login_confirm_password" : MessageLookupByLibrary.simpleMessage("Подтвердите пароль*"),
    "login_email_address" : MessageLookupByLibrary.simpleMessage("Адрес электронной почты"),
    "login_email_or_login" : MessageLookupByLibrary.simpleMessage("Адрес электронной почты или имя пользователя"),
    "login_enter_email" : MessageLookupByLibrary.simpleMessage("Введите адрес электронной почты."),
    "login_enter_email_or_login" : MessageLookupByLibrary.simpleMessage("Введите адрес электронной почты или имя пользователя."),
    "login_enter_password" : MessageLookupByLibrary.simpleMessage("Введите пароль*"),
    "login_here_we_go" : MessageLookupByLibrary.simpleMessage("Поехали!"),
    "login_how_call_you" : MessageLookupByLibrary.simpleMessage("Как к вам обращаться?"),
    "login_password" : MessageLookupByLibrary.simpleMessage("Пароль*"),
    "login_sign_in" : MessageLookupByLibrary.simpleMessage("ВОЙТИ"),
    "login_sign_in_google" : MessageLookupByLibrary.simpleMessage("ВОЙТИ ЧЕРЕЗ GOOGLE"),
    "login_sign_up" : MessageLookupByLibrary.simpleMessage("РЕГИСТРАЦИЯ"),
    "login_username" : MessageLookupByLibrary.simpleMessage("Имя пользователя"),
    "meta_answer" : MessageLookupByLibrary.simpleMessage("Ответ"),
    "meta_cards" : MessageLookupByLibrary.simpleMessage("Карточки"),
    "meta_deck" : MessageLookupByLibrary.simpleMessage("Колода"),
    "meta_decks" : MessageLookupByLibrary.simpleMessage("Колод"),
    "meta_error" : MessageLookupByLibrary.simpleMessage("Ошибка"),
    "meta_no_decks" : MessageLookupByLibrary.simpleMessage("Нет колод"),
    "meta_no_items" : MessageLookupByLibrary.simpleMessage("Нет карточек"),
    "meta_question" : MessageLookupByLibrary.simpleMessage("Вопрос"),
    "meta_refresh" : MessageLookupByLibrary.simpleMessage("Обновить"),
    "meta_swipe_to_refresh" : MessageLookupByLibrary.simpleMessage("Проведите пальцем вниз, чтобы обновить."),
    "profile_subscribtions" : MessageLookupByLibrary.simpleMessage("Подписки:"),
    "profile_subsribers" : MessageLookupByLibrary.simpleMessage("Подписчики:"),
    "profile_title" : MessageLookupByLibrary.simpleMessage("Профиль"),
    "social_decks_chart" : MessageLookupByLibrary.simpleMessage("Колоды сообщества"),
    "social_more" : MessageLookupByLibrary.simpleMessage("Еще..."),
    "train" : MessageLookupByLibrary.simpleMessage("ТРЕНИРОВКА"),
    "train_end_cards" : MessageLookupByLibrary.simpleMessage("карточек"),
    "train_end_conratulations" : MessageLookupByLibrary.simpleMessage("Поздравляем!"),
    "train_end_decks" : m0,
    "train_end_in" : MessageLookupByLibrary.simpleMessage("в"),
    "train_end_learned" : MessageLookupByLibrary.simpleMessage("Вы успешно повторили"),
    "train_no_trainable_decks" : MessageLookupByLibrary.simpleMessage("Нет колод, доступных для тренировки.")
  };
}
