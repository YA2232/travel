import 'package:go_router/go_router.dart';
import 'package:travel/presentation/home/pages/home_page.dart';
import 'package:travel/presentation/onbarding/pages/onboarding_page.dart';
import 'package:travel/presentation/signin/pages/signin_page.dart';
import 'package:travel/presentation/signup/pages/signup_page.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => OnboardingPage(),
    ),
    GoRoute(
      path: "/signin",
      builder: (context, state) => SigninPage(),
    ),
    GoRoute(
      path: "/signup",
      builder: (context, state) => SignupPage(),
    ),
  ]);
}
