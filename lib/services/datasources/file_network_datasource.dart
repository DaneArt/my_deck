import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/utils/file_factory.dart';
import 'package:path_provider/path_provider.dart';

abstract class FileNetworkDataSource {
  Future<MDFileDto> getFileById(String id);
  Future<void> addFile(MDFileDto file);
  Future<void> addFiles(List<MDFileDto> files);
  Future<void> updateFiles(List<MDFileDto> files);
}

class FileNetworkDataSourceImpl implements FileNetworkDataSource {
  final Dio dio;

  FileNetworkDataSourceImpl(this.dio);
  @override
  Future<void> addFile(MDFileDto file) async {
    try {
      await dio.post('/Media/Insert',
          data: FormData.fromMap({
            'files': [file.toFormData()]
          }));
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<MDFileDto> getFileById(String id) async {
    try {
      final response = await dio.download(
          '/Media/Media/$id', ImageFileFactory().create(id).path);

      final contentType = response.headers.map[Headers.contentTypeHeader][0];

      if (contentType == 'image/jpeg') {
        return MDFileDto(
            file: ImageFileFactory().create(id), id: id, type: FileType.IMAGE);
      } else {
        return MDFileDto(
            file: TextFileFactory().create(id), id: id, type: FileType.TEXT);
      }
    } on Exception catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addFiles(List<MDFileDto> files) async {
    try {
      await dio.post(
        '/Media/Insert',
        data: FormData.fromMap(
          {
            "files": files
                .map(
                  (file) => file.toFormData(),
                )
                .toList(),
          },
        ),
      );
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateFiles(List<MDFileDto> files) async {
    try {
      await dio.put(
        '/Media/Update',
        data: FormData.fromMap(
          {
            "files": files
                .map(
                  (file) => file.toFormData(),
                )
                .toList(),
          },
        ),
      );
    } catch (e) {
      throw NetworkException();
    }
  }
}

class FakeFileNetworkDataSource implements FileNetworkDataSource {
  final imageUrls = [
    'https://i.pinimg.com/736x/c1/28/da/c128da58c5da44bdd303e363cf7d384f.jpg',
    'https://i.pinimg.com/originals/71/dc/cc/71dcccc46651f6d61d40a8bc30b75874.jpg',
    'https://a.wattpad.com/cover/197814097-288-k638486.jpg',
    'https://pm1.narvii.com/7060/02dab7a596ceb54fbb883161325c002d3fd4b63cr1-658-483v2_uhq.jpg',
    'https://i.pinimg.com/736x/6b/37/4c/6b374c6b0847e793d4bfdadba37383c9.jpg',
    'https://st.litnet.com/uploads/covers/220/1553878012_8.jpg',
    'https://www.meme-arsenal.com/memes/fefe1c70b8c5bc1f1eee86d05105ca81.jpg',
    'https://sun9-53.userapi.com/impf/c834201/v834201086/5e593/kRtKJinLKcU.jpg?size=200x0&quality=90&sign=bc8c524ae4b06c550df46389f81d99b2&ava=1'
  ];

  @override
  Future<void> addFile(MDFileDto file) {
    //HAHAH SOSI
  }

  @override
  Future<MDFileDto> getFileById(String id) async {
    try {
      var url = imageUrls[Random().nextInt(imageUrls.length - 1)];
      var response = await Dio().get(url);
      File file2 = ImageFileFactory().create(id);
      file2.writeAsBytesSync(response.data);
      return MDFileDto(file: file2, id: id, type: FileType.IMAGE);
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addFiles(List<MDFileDto> files) {
    // TODO: implement addFiles
    throw UnimplementedError();
  }

  @override
  Future<void> updateFiles(List<MDFileDto> files) {
    // TODO: implement updateFiles
    throw UnimplementedError();
  }
}
