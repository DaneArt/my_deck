import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mydeck/core/error/exception.dart';

import 'bother_wrapper.dart';

abstract class MyDeckMediaDataSource {
  Future<void> addFileToAppCache(Both<String, File> file);

  Future<void> addFilesToAppCache(List<Both<String, File>> files);

  Future<void> deleteFileFromAppCache(File file);

  Future<void> deleteFilesFromAppCache(List<File> files);
}

class MyDeckMediaDataSourceImpl implements MyDeckMediaDataSource {
  @override
  Future<void> addFileToAppCache(Both<String, File> file) async {
    try {
      final Directory dir =
          Directory(file.left.substring(0, file.left.lastIndexOf('/')));
      if (!await dir.exists()) {
        await dir.create();
      }
      if (file.right.path != file.left) {
        final oldFile = File(file.left);
        await deleteFileFromAppCache(oldFile);
        file.right.copy(file.left);
      }
    } catch (e) {
      print(e);
      throw CacheException();
    }
  }

  @override
  Future<void> addFilesToAppCache(List<Both<String, File>> files) async {
    try {
      for (var file in files) {
        addFileToAppCache(file);
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteFileFromAppCache(File file) async {
    try {
      if (file.existsSync()) {
        await file.delete();
        imageCache.clear();
      }
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteFilesFromAppCache(List<File> files) async {
    try {
      for (var file in files) {
        deleteFileFromAppCache(file);
      }
    } catch (e) {
      throw CacheException();
    }
  }
}
