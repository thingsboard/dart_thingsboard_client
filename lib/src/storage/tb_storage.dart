abstract class TbStorage {
  Future<void> setItem(String key, String value);

  Future<void> deleteItem(String key);

  Future<String?> getItem(String key);
}
