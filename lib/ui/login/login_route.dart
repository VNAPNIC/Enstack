import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/login/screen/login_screen.dart';
import 'package:get/get.dart';

class LoginRoute extends RouteDefine {
  static const id = ' Login';

  static offAllAndPush() {
    Get.offAndToNamed(id);
  }

  @override
  List<Path> initRoute(Map? arguments) => [
        Path(
          name: id,
          builder: (_) => LoginScreen(),
        ),
      ];
}
