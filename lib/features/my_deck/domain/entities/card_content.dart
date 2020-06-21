import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

part "card_content.freezed.dart";

@freezed
abstract class CardContent with _$CardContent {
  factory CardContent.noContent() = NoContent;

  factory CardContent.textContent({@required String text}) = TextContent;

  factory CardContent.imageContent({@required File image}) = ImageContent;

  factory CardContent.fromModel(String model) {
    if (model.isEmpty) {
      return CardContent.noContent();
    } else if (model.contains('/media/')) {
      return CardContent.imageContent(image: File(model));
    } else {
      return CardContent.textContent(text: model);
    }
  }

  @late
  String get model => this.map(
      noContent: (content) => '',
      textContent: (content) => content.text,
      imageContent: (content) => content.image.path);
}
