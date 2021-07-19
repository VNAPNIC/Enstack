import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/forget_pasword/screen/forget_password_screen.dart';
import 'package:get/get.dart';

class ForgetPasswordRoute extends RouteDefine {
  static const id = 'ForgetPassword';

  static push(){
    Get.toNamed(id);
  }

  @override
  List<Path> initRoute(Map? arguments) => [
    Path(
      name: id,
      builder: (_) => ForgetPasswordScreen(),
    ),
  ];
}
