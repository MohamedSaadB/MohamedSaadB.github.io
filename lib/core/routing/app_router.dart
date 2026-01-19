import 'package:go_router/go_router.dart';
import '../../features/home/presentation/pages/home_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
  ],
);
