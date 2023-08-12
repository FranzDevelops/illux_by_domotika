import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:illux_by_domotika/config/routes/router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.intro.path,
    debugLogDiagnostics: kDebugMode,
    routes: [
      ...IlluxByDomotikaRouter.router,
    ],
  );
});
