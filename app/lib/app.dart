import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_demo/navigation/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:screens/common/l10n/localizations.dart';
import 'package:screens/settings/bloc/theme_bloc.dart';

class CleanArchitectureDemoApp extends StatelessWidget {
  const CleanArchitectureDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().goRouter;

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => MaterialApp.router(
          title: 'Clean Architecture Demo',
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          routerConfig: router,
          themeMode: state.mode,
          theme: lightThemeData,
          darkTheme: darkThemeData,
        ),
      ),
    );
  }
}
