
import 'package:flutter/material.dart';
import 'package:myapp/config/theme/app_theme.dart';
import 'package:myapp/presentation/providers/chat_provider.dart';
import 'package:myapp/presentation/screens/chat_screen.dart';
import 'package:provider/provider.dart';
 
void main() {runApp(const MyApp());} 
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ChatProvider()),
      ],
      child: MaterialApp(
        theme: AppTheme(initialColor: 0).currentTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        home:const  ChatScreen()
      ),
    );
  }
}