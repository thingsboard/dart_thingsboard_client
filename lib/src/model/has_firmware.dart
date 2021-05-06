import 'id/firmware_id.dart';

abstract class HasFirmware {

  FirmwareId? getFirmwareId();

  FirmwareId? getSoftwareId();

}
