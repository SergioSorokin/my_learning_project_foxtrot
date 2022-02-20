import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:discounter/dependencies.dart';
import 'package:discounter/generated/l10n.dart';
import 'package:discounter/screens/home_page.dart';
import 'package:discounter/screens/profile_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

// ignore: must_be_immutable
class App extends StatelessWidget with Dependencies {
  App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        textTheme: GoogleFonts.actorTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.red,
        errorColor: Colors.purple,
      ),
      routes: {
        HomePage.routName: (context) => HomePage.initRoute(
              context,
              repository: repository,
              configRepository: configRepository,
              firebaseStorageRepository: firebaseStorageRepository,
            ),
        ProfileScreen.routName: (context) => ProfileScreen.initRoute(
              context,
              repository: repository,
              firebaseStorageRepository: firebaseStorageRepository,
            ),
      },
      initialRoute: HomePage.routName,
    );
  }
}
