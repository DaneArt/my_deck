import 'package:jose/jose.dart';

abstract class TokenFactory {
  String create(Object payload);
}

class GoogleTokenFactory implements TokenFactory {
  static const String _kSecretKey =
      'tLECRAH5TZ7e9ktUUGct2tvPdcsE98luk55wIUvPTegOnOkwficlKZWlXauoUeFs';
  @override
  String create(Object payload) {
    final jwt = JsonWebToken.unverified(payload.toString());

    final builder = new JsonWebSignatureBuilder();

    // set the content
    builder.jsonContent = jwt.claims;

    // add a key to sign, can only add one for JWT
    builder.addRecipient(
      JsonWebKey.fromJson({
        'kty': 'oct',
        'k': _kSecretKey,
      }),
      algorithm: "HS256",
    );

    // build the jws
    var jws = builder.build();
    return jws.toCompactSerialization();
  }
}
