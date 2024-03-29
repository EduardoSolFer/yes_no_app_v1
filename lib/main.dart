import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_v1/config/theme/app_theme.dart';
import 'package:yes_no_app_v1/presentation/providers/chat_providers.dart';
import 'package:yes_no_app_v1/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
          title: 'YesNoApp',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 1).theme(),
          home: const ChatScreen()),
    );

    //   @override
    // Widget build(BuildContext context) {
    //   return MaterialApp(
    //     title: 'YesNoApp',
    //     debugShowCheckedModeBanner: false,
    //     theme: AppTheme(selectedColor: 2).theme(),
    //     home: Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Material App Bar'),
    //       ),
    //       body: Center(
    //         child: FilledButton.tonal(
    //           onPressed: () {},
    //           child: const Text('Click  Me'))
    //       ),
    //     ),
    //   );
  }
}
