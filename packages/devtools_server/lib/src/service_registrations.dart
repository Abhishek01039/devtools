// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class RegisteredServiceDescription {
  const RegisteredServiceDescription._({
    required this.service,
    required this.title,
    this.icon,
  });

  final String service;
  final String title;
//  final DevToolsIcon icon;
  final dynamic icon;
}

/// Flutter memory service registered by Flutter Tools.
///
/// We call this service to get version information about the Flutter Android memory info
/// using Android's ADB.
const flutterMemory = RegisteredServiceDescription._(
  service: 'flutterMemoryInfo',
  title: 'Flutter Memory Info',
  // TODO(terry): Better icon - icon w/o a Flutter dependency.
  //  icon: FlutterIcons.snapshot,
);

const flutterListViews = '_flutter.listViews';

/// Flutter engine returns estimate how much memory is used by layer/picture raster
/// cache entries in bytes.
const flutterEngineRasterCache = '_flutter.estimateRasterCacheMemory';
