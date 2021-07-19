
import 'package:enstack/data/common/pref_key.dart';
import 'package:enstack/data/common/shared_preferences_manager.dart';
import 'package:enstack/di/di_module.dart';

class SessionPref {
  static void saveSession(
      {required String accessToken, required String refreshToken}) {
    var preferencesManager = getIt.get<SharedPreferencesManager>();
    preferencesManager.putString(keyAccessToken, accessToken);
    preferencesManager.putString(keyRefreshToken, refreshToken);
  }

  static String? getAccessToken() =>
      getIt.get<SharedPreferencesManager>().getString(keyAccessToken);

  static String? getRefreshToken() =>
      getIt.get<SharedPreferencesManager>().getString(keyRefreshToken);

  static bool isSessionValid() {
    try {
      return getIt
              .get<SharedPreferencesManager>()
              .getString(keyAccessToken)
              ?.isNotEmpty ==
          true;
    } catch (e) {
      return false;
    }
  }

  static Future<void> clearUserData() async {
    await getIt.get<SharedPreferencesManager>().clear();
  }
}
