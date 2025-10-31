import 'package:go_router/go_router.dart';
import 'package:portfolio_web_app/features/main/presentation/screens/main_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',

  routes: [GoRoute(path: '/', builder: (context, state) => MainScreen())],
);
