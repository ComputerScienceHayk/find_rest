import 'package:hive/hive.dart';

class HiveService {
  HiveService._();
  static Future<void> initHive() async {
    await Hive.openBox('token');
  }
}