
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, initial: true),
    AutoRoute(page: ProfileRoute.page),
  ];
}
