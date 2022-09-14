import 'package:bool_objects/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bool_objects/firebase_options.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseDatabase.instance.setPersistenceEnabled(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.manropeTextTheme(),
        hintColor: const Color(0xFF8F94A9),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xE6FFFFFF),
          titleTextStyle: GoogleFonts.manrope(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          titleSpacing: 24,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color(0xFF31AC6A).withOpacity(.32);
            }
            if (!states.contains(MaterialState.selected)) {
              return Colors.black.withOpacity(.75);
            }
            return const Color(0xFF31AC6A);
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color(0xFF31AC6A).withOpacity(.32);
            }
            if (!states.contains(MaterialState.selected)) {
              return Colors.black.withOpacity(.75);
            }
            return const Color(0xFF31AC6A);
          }),
        ),
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const Color(0xFF31AC6A).withOpacity(.32);
              }
              return const Color(0xFF31AC6A);
            },
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
