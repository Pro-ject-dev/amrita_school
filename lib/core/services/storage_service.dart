import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
final FlutterSecureStorage storage;

  const SecureStorageService({required this.storage});
 
  Future<void> write(String key, dynamic value) async {
    await storage.write(key: key, value: value);
  }


  Future<String?> read(String key) async {
    return await storage.read(key: key);
  }

  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }

  Future<Map<String, String>> readAll() async {
    return await storage.readAll();
  }


  Future<void> clear() async {
    await storage.deleteAll();
  }
}
