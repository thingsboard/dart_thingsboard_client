import 'tb_storage.dart';

class InMemoryStorage implements TbStorage {
  final storageMap = <String, dynamic>{};

  @override
  Future<bool> containsKey(String key) async {
    return storageMap.containsKey(key);
  }

  @override
  Future<void> deleteItem(String key) async {
    storageMap.remove(key);
  }

  @override
  getItem(String key, {defaultValue}) async {
    return storageMap[key] ?? defaultValue;
  }

  @override
  Future<void> setItem(String key, value) async {
    storageMap[key] = value;
  }
}
