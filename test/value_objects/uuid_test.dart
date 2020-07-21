import 'package:flutter_test/flutter_test.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('test uuid', () {
    final uuid = UniqueId.fromString(Uuid().v4());

    expect(uuid.isValid, true);
  });
}
