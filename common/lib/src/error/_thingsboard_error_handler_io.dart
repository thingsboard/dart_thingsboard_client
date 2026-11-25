// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'thingsboard_error.dart';
import '_thingsboard_error_handler_common.dart';

export '_thingsboard_error_handler_common.dart'
    show httpStatusToThingsboardErrorCode;

ThingsboardError toThingsboardError(Object error, [StackTrace? stackTrace]) =>
    convertToThingsboardError(
      error,
      stackTrace,
      isSocketException: (e) => e is SocketException,
    );
