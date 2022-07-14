import 'package:finstagram_flutter_application/resposiveLayout/mobile_screen.dart';
import 'package:finstagram_flutter_application/resposiveLayout/responsiveLayout.dart';
import 'package:finstagram_flutter_application/resposiveLayout/web_screen.dart';
import 'package:finstagram_flutter_application/screens/login_screen.dart';
import 'package:finstagram_flutter_application/screens/signup_screen.dart';
import 'package:finstagram_flutter_application/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb){
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyCgakIEXgJMSkCG4flrWnJZqAWj94iVZs0", appId: "1:797291115705:web:25ad34adc135727a9dd768"
, messagingSenderId: "797291115705" , projectId: "flutter-billing-app-6b3b4",
 storageBucket: "flutter-billing-app-6b3b4.appspot.com",

)
  );  
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FinstaGram App',
      theme: ThemeData.dark().copyWith(
        backgroundColor: mobileBackgroundColor,
      ),
      home: LoginScreen(),
      // const ResponsiveLayout(MobileScreenLayout(), WebScreenLayout()),
    );
  }
}
