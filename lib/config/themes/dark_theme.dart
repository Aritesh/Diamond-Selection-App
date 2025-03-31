// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../core/di/injection_container.dart' as di;
// import '../../core/utils/helpers.dart';
// import '../../features/feature_name/presentation/blocs/feature_bloc.dart';
// import '../navigation/app_router.dart' as AppRouter;
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // ✅ Initialize Firebase
//   // await Firebase.initializeApp();
//
//   // ✅ Initialize Dependency Injection
//   await di.init();
//
//   // ✅ Lock device orientation (optional)
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//
//   runApp(
//     MultiBlocProvider(
//       providers: [
//         BlocProvider<FeatureBloc>(create: (context) => di.sl<FeatureBloc>()),
//         // BlocProvider<ConnectivityBloc>(create: (context) => ConnectivityBloc()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       scaffoldMessengerKey:
//           SnackbarHelper.scaffoldMessengerKey, // Global key for snackbar
//       title: 'My App',
//       routerConfig: AppRouter.router, // ✅ Using GoRouter
//       //    home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
