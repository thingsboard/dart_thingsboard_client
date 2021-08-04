import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'example_utils.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint);

    await tbClient.login(LoginRequest(username, password));

    await otaPackageExample();

    await tbClient.logout(
        requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> otaPackageExample() async {
  print(
      '**********************************************************************');
  print(
      '*               OTA PACKAGE EXAMPLE                                  *');
  print(
      '**********************************************************************');

  var deviceProfileId =
      (await tbClient.getDeviceProfileService().getDefaultDeviceProfileInfo())
          .id;

  var otaPackage = OtaPackageInfo(DeviceProfileId(deviceProfileId.id!),
      OtaPackageType.FIRMWARE, getRandomString(30), 'v.1');
  otaPackage =
      await tbClient.getOtaPackageService().saveOtaPackageInfo(otaPackage);

  var file = MultipartFile.fromString('Test content', filename: 'test.txt');
  otaPackage = await tbClient.getOtaPackageService().saveOtaPackageData(
      otaPackage.id!.id!, file,
      checksumAlgorithm: ChecksumAlgorithm.SHA256);

  print('download ota package with id: ${otaPackage.id!.id}');
  var responseBody = await tbClient
      .getOtaPackageService()
      .downloadOtaPackage(otaPackage.id!.id!);
  if (responseBody != null) {
    var headers = Headers.fromMap(responseBody.headers);
    var contentLength = headers[Headers.contentLengthHeader]?.first ?? '-1';
    var contentType = headers[Headers.contentTypeHeader]?.first ?? '';
    var contentDisposition = headers['content-disposition']?.first ?? '';
    print('download ota package contentLength: $contentLength');
    print('download ota package contentType: $contentType');
    print('download ota package contentDisposition: $contentDisposition');
    var bytes = await responseBody.stream.toList();
    bytes.forEach((bytes) {
      var base64str = base64Encode(bytes);
      print('download ota package chunk length: ${bytes.length}');
      print(
          'download ota package chunk bytes: [${base64str.substring(0, min(30, base64str.length))}...]');
    });
  }

  await tbClient.getOtaPackageService().deleteOtaPackage(otaPackage.id!.id!);

  print(
      '**********************************************************************');
}
