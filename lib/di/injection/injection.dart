import 'package:enstack/di/module/api_module.dart';
import 'package:enstack/di/module/components_module.dart';
import 'package:enstack/di/module/repo_module.dart';

class Injection {
  static Future inject() async {
    await ComponentsModule().provides();
    await ApiModule().provides();
    await RepoModule().provides();
  }
}
