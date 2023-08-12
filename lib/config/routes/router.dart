import 'package:go_router/go_router.dart';
import 'package:illux_by_domotika/config/routes/route.dart';
import 'package:illux_by_domotika/src/onboarding/authentication/presentation/view/user_auth.dart';

class Routes {
  static final intro = Route(path: '/', name: 'auth');
}

class IlluxByDomotikaRouter {
  static List<GoRoute> router = [
    GoRoute(
      path: Routes.intro.path,
      name: Routes.intro.name,
      builder: (context, state) => const AuthentiacionView(),
    ),
  ];
}
