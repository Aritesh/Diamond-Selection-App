import 'package:go_router/go_router.dart';

import '../../presentation/pages/cart_page.dart';
import '../../presentation/pages/filter_page.dart';
import '../../presentation/pages/result_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => FilterPage()),
    GoRoute(path: '/result', builder: (context, state) => ResultPage()),
    GoRoute(path: '/cart', builder: (context, state) => CartPage()),
  ],
);
