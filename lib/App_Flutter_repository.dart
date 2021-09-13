import 'package:app/index.dart';

class AppFlutterRepository {
  final AppFlutterProvider _appFlutterProvider = AppFlutterProvider();

  AppFlutterRepository();

  void test(bool isError) {
    _appFlutterProvider.test(isError);
  }
}