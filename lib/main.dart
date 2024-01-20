import 'package:flutter/material.dart';
import 'package:login_/pages/splash_page.dart';
import 'package:login_/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment('DB_URL'),
    anonKey: const String.fromEnvironment('ANON_KEY'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
