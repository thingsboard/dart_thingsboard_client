import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'storage.dart';

class LocalFileStorage implements TbStorage {
  late Future<bool> ready;

  LocalFileStorage(this.fileName, [this.path]) {
    ready = Future<bool>(() async {
      await _init();
      return true;
    });
  }

  final String? path;
  final String fileName;

  Map<String, dynamic> _data = {};

  RandomAccessFile? _file;

  Future<void> _init() async {
    _data = {};

    final f = await _getFile();
    final length = await f.length();

    if (length == 0) {
      return _flush({});
    } else {
      await _readFile();
    }
  }

  @override
  Future<void> deleteItem(String key) async {
    await ready;
    _data.remove(key);
    return _flush();
  }

  @override
  Future<String?> getItem(String key) async {
    await ready;
    return _data[key];
  }

  @override
  Future<void> setItem(String key, String value) async {
    await ready;
    _data[key] = value;
    return _flush();
  }

  Future<void> _flush([dynamic data]) async {
    final serialized = json.encode(data ?? _data);
    final buffer = utf8.encode(serialized);

    _file = await _file?.lock();
    _file = await _file?.setPosition(0);
    _file = await _file?.writeFrom(buffer);
    _file = await _file?.truncate(buffer.length);
    await _file?.unlock();
  }

  Future<void> _readFile() async {
    var _file = await _getFile();
    final length = await _file.length();
    _file = await _file.setPosition(0);
    final buffer = Uint8List(length);
    await _file.readInto(buffer);
    final contentText = utf8.decode(buffer);

    _data = json.decode(contentText) as Map<String, dynamic>;
  }

  Future<RandomAccessFile> _getFile() async {
    if (_file != null) {
      return _file!;
    }

    final _path = path ?? _getDocumentDir().path;
    final file = File('$_path/$fileName');

    if (await file.exists()) {
      _file = await file.open(mode: FileMode.append);
    } else {
      await file.create();
      _file = await file.open(mode: FileMode.append);
    }

    return _file!;
  }

  Directory _getDocumentDir() {
    try {
      return Directory.current;
    } catch (err) {
      rethrow;
    }
  }
}
