import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_exam/view/homePage.dart';
import 'package:last_exam/view/sign-In.dart';
import 'package:last_exam/view/singup.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => SignIn(),
        ),
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/signUp',
          page: () => SignUp(),
        ),
      ],
    );
  }
}
