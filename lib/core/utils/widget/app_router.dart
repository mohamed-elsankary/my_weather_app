import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/home_view.dart';
import 'package:weather_app/features/search/views/search_view.dart';
import 'package:weather_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static const kSearchView = '/SearchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      )
    ],
  );
}
