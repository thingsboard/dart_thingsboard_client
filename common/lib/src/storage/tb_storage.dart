// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

abstract class TbStorage<E> {
  /// Saves the [key] - [value] pair.
  Future<void> setItem(String key, E value);

  /// Deletes the given [key] from the storage.
  ///
  /// If it does not exist, nothing happens.
  Future<void> deleteItem(String key);

  /// Returns the value associated with the given [key]. If the key does not
  /// exist, `null` is returned.
  ///
  /// If [defaultValue] is specified, it is returned in case the key does not
  /// exist.
  Future<E>? getItem(String key, {E? defaultValue});

  /// Checks whether the storage contains the [key].
  Future<bool> containsKey(String key);
}
