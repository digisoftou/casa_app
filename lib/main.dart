import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/pages_view/entering/choose_your_style/choose_your_style_screen.dart';
import 'package:casa_app/pages_view/entering/sign_in_screen.dart';
import 'package:casa_app/pages_view/entering/sign_up_screen.dart';
import 'package:casa_app/pages_view/navigation/bottom_navigation_bar.dart';
import 'package:casa_app/pages_view/splash_screen/splash_screen.dart';
import 'package:casa_app/providers/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child){
        final provider = Provider.of<LocaleProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: provider.locale,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                primary: CasaColors.black,
                seedColor: Colors.white),
            textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
          ),
          home: const SplashScreen(),
          routes: {
            "/signIn":(context) => const SignInScreen(),
            "/signUp":(context)=> const SignUpScreen(),
            "/chooseYourStyle":(context)=> const ChooseYourStyleScreen(),
            "/bottomNavigation":(context)=> const BottomNavBar(),


          },
        );
      },
  );
}

