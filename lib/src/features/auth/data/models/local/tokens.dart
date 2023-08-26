import 'package:hive/hive.dart';
part 'tokens.g.dart';

@HiveType(typeId: 1)
class Tokens extends HiveObject {

  @HiveField(0)
  late String accessToken;
  @HiveField(1)
  late String refreshToken;
}