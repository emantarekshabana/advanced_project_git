import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/feature/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/home/ui/home_screen.dart';
import '../../feature/login/logic/cubit/login_cubit.dart';
import '../../feature/onboarding/onboarding_screen.dart';
import '../../feature/sign_up/logic/sign_up_cubit.dart';
import '../../feature/sign_up/ui/sign_up_screen.dart';
import '../di/dependency_injection.dart';


class AppRouter {


  Route generateRoute(RouteSettings settings) {
    // this argument to be passed in any screen like this(argument as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
