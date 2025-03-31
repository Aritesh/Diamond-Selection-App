import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  final SharedPreferences prefs;

  StorageService(this.prefs);

  /// **🔹 Save Data**
  Future<void> saveString(String key, String value) async {
    await prefs.setString(key, value);
  }

  Future<void> saveBool(String key, bool value) async {
    await prefs.setBool(key, value);
  }

  /// **🔹 Get Data**
  String? getString(String key) {
    return prefs.getString(key);
  }

  bool? getBool(String key) {
    return prefs.getBool(key);
  }

  /// **🔹 Remove Data**
  Future<void> removeData(String key) async {
    await prefs.remove(key);
  }

  /// **🔹 Clear All Storage**
  Future<void> clearStorage() async {
    await prefs.clear();
  }
}
