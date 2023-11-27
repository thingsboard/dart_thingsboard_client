import 'id/ota_package_id.dart';

abstract mixin class HasOtaPackage {
  OtaPackageId? getFirmwareId();

  OtaPackageId? getSoftwareId();
}
