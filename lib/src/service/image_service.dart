import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

class ImageService {
  final ThingsboardClient _tbClient;

  factory ImageService(ThingsboardClient tbClient) {
    return ImageService._internal(tbClient);
  }

  ImageService._internal(this._tbClient);

  Future<TbResourceInfo> uploadImage(MultipartFile file,
      {String? title, RequestConfig? requestConfig}) async {
    var formData = FormData.fromMap({
      'file': file,
      if (title != null) 'title': title,
    });
    var response = await _tbClient.post<Map<String, dynamic>>('/api/image',
        data: formData,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TbResourceInfo.fromJson(response.data!);
  }

  Future<TbResourceInfo> uploadImageBytes(
    Uint8List imageBytes, {
    required String title,
    String mimeType = 'image/png',
    RequestConfig? requestConfig,
  }) async {
    final file = MultipartFile.fromBytes(
      imageBytes,
      filename: title,
      contentType: DioMediaType.parse(mimeType),
    );
    return uploadImage(file, title: title, requestConfig: requestConfig);
  }
}
