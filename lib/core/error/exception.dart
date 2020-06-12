class CacheException implements Exception{}

class NetworkException implements Exception {}

class MissingUserException implements NetworkException{}

class UnauthorizedException implements NetworkException{}