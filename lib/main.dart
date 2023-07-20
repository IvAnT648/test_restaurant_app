import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core/di/di.dart';
import 'core/navigation/router.dart';
import 'core/resources/design.dart';
import 'data/models/auth.dart';
import 'data/models/profile.dart';
import 'data/sources/local/auth_storage.dart';
import 'data/sources/local/profile_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDI(Env.dev);

  // Init Hive
  final hiveDir = await getApplicationDocumentsDirectory();
  Hive.init(hiveDir.path);
  Hive.registerAdapter<AuthDataModel>(AuthDataModelAdapter());
  Hive.registerAdapter<ProfileModel>(ProfileModelAdapter());
  await Future.wait([
    HiveAuthLocalStorage.init(),
    HiveProfileStorage.init(),
  ]);

  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  final _appRouter = AppRouter();

  RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Restaurant App',
      theme: Design.themeData,
      routerConfig: _appRouter.config(),
    );
  }
}
