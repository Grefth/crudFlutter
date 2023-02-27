import 'package:flutter_app/router/app_router.dart';
import 'package:flutter_app/screens/screens.dart';
import 'package:flutter_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Welcome to Flutter',
      home: const Lista2Screen(),
      initialRoute: AppRouter.inicialRoute,
      routes: AppRouter.getAppRoutes(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}