import 'id/ota_package_id.dart';

abstract class HasOtaPackage {
  OtaPackageId? getFirmwareId();

  OtaPackageId? getSoftwareId();
}
