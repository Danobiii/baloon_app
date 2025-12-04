import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationController {
  final bool isLoading;
  final String? error;
  final String? token;

  AuthenticationController({required this.isLoading, this.error, this.token});
  AuthenticationController copyWith({
    bool? isLoading,
    String? error,
    String? token,
  }) {
    return copyWith(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      token: token,
    );
  }
}
class LoginNotifier extends StateNotifier<AuthenticationController>{
  LoginNotifier(): super(LoginNotifier());

  Future<void> login(String email, String password) async{
      state = state.copyWith(isLoading: true, error: null);
  }
}
