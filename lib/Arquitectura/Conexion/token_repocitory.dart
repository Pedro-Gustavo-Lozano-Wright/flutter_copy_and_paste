

import 'flutter_secure_estorage.dart';

class TokenRepository {
  final flutterSecureStorage = FlutterSecureStorage();

  static const String storageDefaultAuthToken = 'default_auth_token';

  Future<void> setToken(String token) async {
    /// write to keystore/keychain
    await flutterSecureStorage.write(
        key: storageDefaultAuthToken, value: token);
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await flutterSecureStorage.delete(key: storageDefaultAuthToken);
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await flutterSecureStorage.write(
        key: storageDefaultAuthToken, value: token);
  }

  Future<bool> hasToken() async {
    final token = await flutterSecureStorage.read(key: storageDefaultAuthToken);
    return token != null;
  }

  Future<String> getToken() async {
    return await flutterSecureStorage.read(key: storageDefaultAuthToken);
  }
}
