import 'package:chopper/chopper.dart';

part 'user_service.chopper.dart';

@ChopperApi(baseUrl: "http://nypifok-001-site1.gtempurl.com/mydeckapi")
abstract class UserService extends ChopperService {
  static UserService create([ChopperClient client]) => _$UserService(client);
}
