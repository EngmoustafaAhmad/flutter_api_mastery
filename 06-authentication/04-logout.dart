import '../token_storage/token_storage.dart';

class Logout {
  final TokenStorage tokenStorage;

  Logout(this.tokenStorage);

  Future<void> call() async {
    await tokenStorage.clearTokens();
  }
}
