import 'package:http/http.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

class MDMultipartFile extends MultipartFile {
  final String fileId;

  MDMultipartFile(
      String field, Stream<List<int>> stream, int length, this.fileId)
      : super(field, stream, length);
}
