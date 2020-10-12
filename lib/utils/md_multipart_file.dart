import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http_parser/http_parser.dart';

import 'package:mydeck/models/entitites/unique_id.dart';

class MDMultipartFile extends MultipartFile {
  final String fileId;

  MDMultipartFile(String field, Stream<List<int>> stream, int length,
      {@required this.fileId})
      : super(field, stream, length);
}
