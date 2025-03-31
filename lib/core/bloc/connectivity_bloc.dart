import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConnectivityStatus { connected, disconnected }

class ConnectivityBloc extends Cubit<ConnectivityStatus> {
  final Connectivity _connectivity = Connectivity();

  ConnectivityBloc() : super(ConnectivityStatus.connected) {
    _connectivity.onConnectivityChanged.listen((result) {
      print(result);
      print("____________");
      emit(
        result == ConnectivityResult.none
            ? ConnectivityStatus.disconnected
            : ConnectivityStatus.connected,
      );
    });
  }
}

// builder: (context, child) {
// return BlocListener<ConnectivityBloc, ConnectivityStatus>(
// listener: (context, state) {
// if (state == ConnectivityStatus.disconnected) {
// SnackbarHelper.showSnackbar(
// "No Internet Connection!",
// color: Colors.red,
// );
// } else {
// SnackbarHelper.showSnackbar("Connected!", color: Colors.green);
// }
// },
// child: child ?? const SizedBox.shrink(),
// );
// },
