import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/check_email/screen/check_email_screen.dart';
import 'package:get/get.dart';

class CheckEmailRoute extends RouteDefine {
  static const id = 'CheckEmail';

  static push(){
    Get.toNamed(id);
  }

  @override
  List<Path> initRoute(Map? arguments) => [
    Path(
      name: id,
      builder: (_) => CheckEmailScreen(),
    ),
  ];
}
