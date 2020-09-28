import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_deliver/core/base/base_service.dart';

class AuthService extends BaseService {
  SharedPreferences sharedValues;

  void initValues() async {
    sharedValues = await SharedPreferences.getInstance();
  }

  void setValue({String keyName, dynamic keyValue}) async {
    switch (keyValue.runtimeType) {
      case int:
        await sharedValues.setInt(keyName, keyValue);
        break;

      case double:
        await sharedValues.setDouble(keyName, keyValue);
        break;

      case String:
        await sharedValues.setString(keyName, keyValue);
        break;

      case bool:
        await sharedValues.setBool(keyName, keyValue);
        break;
      
      case List:
        await sharedValues.setStringList(keyName, keyValue);
        break;

      default:
        print("Shared Preferences does not accept this type of data");
        break;
    }
  }

  Future<bool> removeKey({String keyName}) async {
    return await sharedValues.remove(keyName);
  }

  Set<String> getKeys() {
    return sharedValues.getKeys();
  }

  List<String> getStringList({String keyName}) {
    return sharedValues.getStringList(keyName);
  }

  String getString({String keyName}) {
    return sharedValues.getString(keyName);
  }

  int getInt({String keyName}) {
    return sharedValues.getInt(keyName);
  }

  double getDouble({String keyName}) {
    return sharedValues.getDouble(keyName);
  }

  bool getBool({String keyName}) {
    return sharedValues.getBool(keyName);
  }
}
