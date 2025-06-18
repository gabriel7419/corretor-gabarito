import 'package:flutter/material.dart';
import '../core/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String email, String password) async {
    final success = await AuthService().login(email, password);
    if (success) {
      _isAuthenticated = true;
      notifyListeners();
    }
  }
}
