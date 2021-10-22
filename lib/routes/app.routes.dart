import 'package:linktree_clone/views/home.view.dart';
import 'package:linktree_clone/views/splash.view.dart';

class AppRoutes {
  static const String HomeRoute = '/home';
  static const String SplashRoute = '/splash';

  static final routes = {
    HomeRoute: (context) => HomeView(),
    SplashRoute: (context) => SplashView(),
  };
}