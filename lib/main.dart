import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:friflex_api/new_home/frame.dart';

// import 'firebase_options.dart';

Future<void> main() async {
  await run();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color(0xFFC67C4E),
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            devicePixelRatio: 2,
            // textScaler: const TextScaler.linear(1),
          ),
          child: Transform.scale(
            scale: 1,
            child: child ?? const Placeholder(),
          ),
        );
      },
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return const Frame();
      }),
    );
  }
}

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
}
