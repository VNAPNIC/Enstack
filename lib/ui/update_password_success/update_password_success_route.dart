import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/update_password_success/screen/update_password_success_screen.dart';
import 'package:get/get.dart';

class UpdatePasswordSuccessRoute extends RouteDefine {
  static const id = 'UpdatePasswordSuccess';

  static push(){
    Get.toNamed(id);
  }

  @override
  List<Path> initRoute(Map? arguments) => [
    Path(
      name: id,
      builder: (_) => UpdatePasswordSuccessScreen(),
    ),
  ];
}
