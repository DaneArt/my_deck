import 'package:flutter_test/flutter_test.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('test uuid', () {
    final uuid = UniqueId.fromString(Uuid().v4());

    expect(uuid.isValid, true);
  });
}
