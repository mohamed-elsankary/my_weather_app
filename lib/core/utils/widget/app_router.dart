import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/home_view.dart';
import 'package:weather_app/features/search/views/widgets/search_details.dart';
import 'package:weather_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSearchDetails = '/SearchDetails';
  static const kHomeView = '/HomeView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kSearchDetails,
        builder: (context, state) {
          return const SearchDetails();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
