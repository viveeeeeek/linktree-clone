import 'package:linktree_clone/views/home_screen.dart';
import 'package:linktree_clone/views/splash_screen.dart';

class AppRoutes {
  static const String homeRoute = '/home';
  static const String splashRoute = '/splash';

  static final routes = {
    homeRoute: (context) => const HomeView(),
    splashRoute: (context) => const SplashView(),
  };
}
