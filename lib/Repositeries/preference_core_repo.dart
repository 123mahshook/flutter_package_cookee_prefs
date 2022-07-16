import 'package:cookee_prefs/Contracts/preference_core_repo_contract.dart';
import 'package:cookee_prefs/Helpers/pr_convert_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PreferenceCoreRepo implements PreferenceCoreRepoContract {
  @override
  Future<bool> getBool(String key) async {
    return PrConvertService.convertBool(await getData(key));
  }

  @override
  Future<double> getDouble(String key) async {
    return PrConvertService.convertDouble(await getData(key));
  }

  @override
  Future<int> getInt(String key) async {
    return PrConvertService.convertInt(await getData(key));
  }

  @override
  Future<String> getString(String key) async {
    return await getData(key);
  }

  @override
  setBool(String key, bool val) async {
    await setData(key, val.toString());
  }

  @override
  setDouble(String key, double val) async {
    await setData(key, val.toString());
  }

  @override
  setInt(String key, int val) async {
    await setData(key, val.toString());
  }

  @override
  setString(String key, String val) async {
    await setData(key, val.toString());
  }

  Future<String> getData(String key) async {
    final storage = new FlutterSecureStorage();
    return await storage.read(key: key) ?? "";
  }

  setData(String key, String val) async {
    final storage = new FlutterSecureStorage();
    await storage.write(key: key, value: val);
  }
}
