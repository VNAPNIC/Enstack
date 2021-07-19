import 'package:enstack/route/route_define.dart';
import 'package:enstack/ui/login/screen/login_screen.dart';

class LoginRoute extends RouteDefine {
  static const id = ' Login';

  @override
  List<Path> initRoute(Map? arguments) => [
    Path(
      name: id,
      builder: (_) => LoginScreen(),
    ),
  ];
}
