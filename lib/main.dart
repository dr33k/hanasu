import 'package:hanasu/screen/home_screen.dart';
import 'package:hanasu/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider())
    ],
        child: const ChatApp()
    ),
  );
}

class ChatApp extends StatelessWidget {
  const ChatApp({
    super.key,
  });

  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hanasu',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: const HomeScreen(title: 'Hanasu'),
    );
  }

}