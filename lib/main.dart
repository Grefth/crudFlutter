import 'dart:developer';

import 'package:flutter_app/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/BLoC/user/user_bloc.dart';

import 'package:flutter_app/router/app_router.dart';
import 'package:flutter_app/screens/screens.dart';
import 'package:flutter_app/themes/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final LocalNotifiactionService service = LocalNotifiactionService();
  service.initialize();
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: 'Welcome to Flutter',
        home: const Lista2Screen(),
        initialRoute: AppRouter.inicialRoute,
        routes: AppRouter.getAppRoutes(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.lightTheme
      ),
    );
  }
}