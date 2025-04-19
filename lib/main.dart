import 'package:flutter/material.dart';
import 'package:theme_mode/buttons/outlined_text_button.dart';
import 'package:theme_mode/buttons/primary_text_button.dart';
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/inherited/theme_mode.dart';
import 'package:theme_mode/inherited/theme_scope.dart';
import 'package:theme_mode/main_screen.dart';
import 'package:theme_mode/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await ThemeScopeWidget.initialize(const MyApp());
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeScope.of(context);

    return MaterialApp(
      title: 'Flutter App',
      themeMode: theme.themeMode,
      theme: ThemeData(
        cardTheme: CardTheme(
          color: AppColors.cardLight, // Default
          shadowColor: Colors.black.withOpacity(0.1),
          surfaceTintColor: Colors.transparent,
        ),

        extensions: [theme.appTheme],
        scaffoldBackgroundColor: AppColors.scaffoldLight,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.appBarLight),
      ),
      darkTheme: ThemeData(
        cardTheme: CardTheme(
          color: AppColors.cardDark,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        extensions: [theme.appTheme],
        scaffoldBackgroundColor: AppColors.scaffoldDark,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.appBarDark),
      ),
      home: const MyHomePage(title: 'Theme Mode'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeScope = ThemeScopeWidget.of(context);
    final theme = ThemeScope.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: context.typography.buttonXLarge),
      ),
      body: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(12),
            children: [
              Center(
                child: Text(
                  "Hello, Welcome Back",
                  style: context.typography.button2XLarge,
                ),
              ),
              SizedBox(height: 12),
              Text("User Name", style: context.typography.inputLabel),
              SizedBox(height: 4),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.defaultColor,
                    ),
                  ),
                  hintText: "Enter User Name",
                  hintStyle: context.typography.inputPlaceHolder,
                  labelStyle: context.typography.inputPlaceHolder,
                  prefixIcon: Icon(
                    Icons.person,
                    color: context.appInputTheme.focusedTextDefault,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.borderDefault,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.focusedOnBrand,
                    ),
                  ),
                ),
                style: context.typography.inputPlaceHolder,
              ),
              SizedBox(height: 12),
              Text("Password", style: context.typography.inputLabel),
              SizedBox(height: 4),
              TextField(
                style: context.typography.inputPlaceHolder,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.defaultColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.borderDefault,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: context.appInputTheme.focusedOnBrand,
                    ),
                  ),
                  labelStyle: context.typography.inputPlaceHolder,

                  hintText: "Enter Password",
                  hintStyle: context.typography.inputPlaceHolder,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: context.appInputTheme.focusedTextDefault,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: context.appInputTheme.focusedTextDefault,
                  ),
                ),
              ),
              SizedBox(height: 24),
              PrimaryTextButton(
                label: "Login",
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MainScreen();
                        },
                      ),
                    ),
              ),
              SizedBox(height: 12),
              OutlineTextButton(
                label: "Switch Theme",
                onTap: () async {
                  await themeScope?.changeTo(
                    theme.themeMode == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
