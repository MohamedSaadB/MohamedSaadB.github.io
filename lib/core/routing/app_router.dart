import 'package:go_router/go_router.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/legal/presentation/pages/checkout_page.dart';
import '../../features/legal/presentation/pages/pricing_page.dart';
import '../../features/legal/presentation/pages/refund_policy_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: '/pricing',
      builder: (context, state) => PricingPage(
      ),
    ),
    GoRoute(
      path: '/refund-policy',
      builder: (context, state) => const RefundPolicyPage(),
    ),
    GoRoute(
      path: '/checkout',
      builder: (context, state) => CheckoutPage(planKey: state.uri.queryParameters['plan']),
    ),


  ],
);
