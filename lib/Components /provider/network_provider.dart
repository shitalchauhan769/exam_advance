import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

class NetworkProvider with ChangeNotifier {
  Connectivity connectivity = Connectivity();
  bool? Isbool;

  void cakeConnectivity() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        if (event.contains(ConnectivityResult.none)) {
          Isbool = false;
        } else {
          Isbool = true;
        }
        notifyListeners();
      },
    );
  }
}
