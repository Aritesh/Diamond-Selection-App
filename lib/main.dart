import 'package:diamond/presentation/blocs/cart_bloc.dart';
import 'package:diamond/presentation/blocs/diamond_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/navigation/app_router.dart' as AppRouter;
import 'core/utils/helpers.dart';
import 'data/datasources/diamond_datasource.dart';
import 'data/datasources/local_datascurce.dart';
import 'data/repositories/diamond_repository_impl.dart';
import 'domain/usecases/add_to_cart.dart';
import 'domain/usecases/filter_diamonds.dart';
import 'domain/usecases/get_cart.dart';
import 'domain/usecases/get_diamonds.dart';
import 'domain/usecases/remove_form_cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp(sharedPreferences: sharedPreferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const MyApp({super.key, required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    final diamondDataSource = DiamondDataSourceImpl();
    final localDataSource = LocalDataSourceImpl(sharedPreferences);
    final diamondRepository = DiamondRepositoryImpl(
      diamondDataSource,
      localDataSource,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) => DiamondBloc(
                GetDiamonds(diamondRepository),
                FilterDiamonds(diamondRepository),
              ),
        ),
        BlocProvider(
          create:
              (_) => CartBloc(
                AddToCart(diamondRepository),
                RemoveFromCart(diamondRepository),
                GetCart(diamondRepository),
              )..add(LoadCart()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Diamond Selection App',
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: SnackbarHelper.scaffoldMessengerKey,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
