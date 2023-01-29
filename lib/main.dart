import 'package:dero_control_interface/routing/router.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // runApp( ProviderScope(observers: [DebugLogger()],child: const MyApp()));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
        title: 'Dero Control Interface',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: AppColors.background,
            brightness: Brightness.dark,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            textTheme: GoogleFonts.ibmPlexMonoTextTheme().apply(
                bodyColor: AppColors.text, displayColor: AppColors.text)),
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate);
  }
}
