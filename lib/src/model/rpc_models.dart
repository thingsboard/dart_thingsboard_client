import 'base_data.dart';
import 'has_tenant_id.dart';
import 'id/device_id.dart';
import 'id/rpc_id.dart';
import 'id/tenant_id.dart';

enum RpcStatus { QUEUED, DELIVERED, SUCCESSFUL, TIMEOUT, FAILED }

RpcStatus rpcStatusFromString(String value) {
  return RpcStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension RpcStatusToString on RpcStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class Rpc extends BaseData<RpcId> with HasTenantId {
  TenantId tenantId;
  DeviceId deviceId;
  int expirationTime;
  dynamic request;
  dynamic response;
  RpcStatus status;

  Rpc.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        deviceId = DeviceId.fromJson(json['deviceId']),
        expirationTime = json['expirationTime'],
        request = json['request'],
        response = json['response'],
        status = rpcStatusFromString(json['status']),
        super.fromJson(json);

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'Rpc{tenantId: $tenantId, deviceId: $deviceId, expirationTime: $expirationTime, request: $request, response: $response, status: $status}';
  }
}
