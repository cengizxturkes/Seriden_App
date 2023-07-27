import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../services/login_service.dart';
import '../models/login_response/login_response.dart';
import '../models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyHive {
  // prevent making instance
  MyHive._();

  //bu login class'I hive'e ait bir class değil.
  // hive box to store user data
  static late Box<Login> _userBox;
  // box name its like table name
  static const String _userBoxName = 'user';
  // store current user as (key => value)
  static const String _currentUserKey = 'local_user';

  /// initialize local db (HIVE)
  /// pass testPath only if you are testing hive
  static Future<void> init(
      {Function(HiveInterface)? registerAdapters, String? testPath}) async {
    if (testPath != null) {
      Hive.init(testPath);
    } else {
      await Hive.initFlutter();
    }
    await registerAdapters?.call(Hive);
    await initUserBox();
  }

  /// initialize user box
  static Future<void> initUserBox() async {
    _userBox = await Hive.openBox(_userBoxName);
  }

  /// save user to database
  static Future<bool> saveUserToHive(Login user) async {
    try {
      await _userBox.put(_currentUserKey, user);
      return true;
    } catch (error) {
      return false;
    }
  }

  /// get current logged user
  static Login? getCurrentUser() {
    try {
      return _userBox.get(_currentUserKey);
    } catch (error) {
      return null;
    }
  }

  /// delete the current user
  static Future<bool> deleteCurrentUser() async {
    try {
      await _userBox.delete(_currentUserKey);
      return true;
    } catch (error) {
      return false;
    }
  }

  // setter for _userBox (only using it for testing)
  set userBox(Box<Login> box) {
    _userBox = box;
  }
}
