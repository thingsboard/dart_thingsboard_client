import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/queue_id.dart';
import 'additional_info_based.dart';
import 'id/tenant_id.dart';

enum SubmitStrategyType {
  BURST,
  BATCH,
  SEQUENTIAL_BY_ORIGINATOR,
  SEQUENTIAL_BY_TENANT,
  SEQUENTIAL
}

SubmitStrategyType submitStrategyTypeFromString(String value) {
  return SubmitStrategyType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension SubmitStrategyTypeToString on SubmitStrategyType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ProcessingStrategyType {
  SKIP_ALL_FAILURES,
  SKIP_ALL_FAILURES_AND_TIMED_OUT,
  RETRY_ALL,
  RETRY_FAILED,
  RETRY_TIMED_OUT,
  RETRY_FAILED_AND_TIMED_OUT
}

ProcessingStrategyType processingStrategyTypeFromString(String value) {
  return ProcessingStrategyType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ProcessingStrategyTypeToString on ProcessingStrategyType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ServiceType { TB_CORE, TB_RULE_ENGINE, TB_TRANSPORT, JS_EXECUTOR }

extension ServiceTypeToString on ServiceType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class SubmitStrategy {
  SubmitStrategyType type;
  int? batchSize;

  SubmitStrategy(this.type);

  SubmitStrategy.fromJson(Map<String, dynamic> json)
      : type = submitStrategyTypeFromString(json['type']),
        batchSize = json['batchSize'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    if (batchSize != null) {
      json['batchSize'] = batchSize;
    }
    return json;
  }

  @override
  String toString() {
    return 'SubmitStrategy{type: $type, batchSize: $batchSize}';
  }
}

class ProcessingStrategy {
  ProcessingStrategyType type;
  int? retries;
  double? failurePercentage;
  int? pauseBetweenRetries;
  int? maxPauseBetweenRetries;

  ProcessingStrategy(this.type);

  ProcessingStrategy.fromJson(Map<String, dynamic> json)
      : type = processingStrategyTypeFromString(json['type']),
        retries = json['retries'],
        failurePercentage = json['failurePercentage'],
        pauseBetweenRetries = json['pauseBetweenRetries'],
        maxPauseBetweenRetries = json['maxPauseBetweenRetries'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    if (retries != null) {
      json['retries'] = retries;
    }
    if (failurePercentage != null) {
      json['failurePercentage'] = failurePercentage;
    }
    if (pauseBetweenRetries != null) {
      json['pauseBetweenRetries'] = pauseBetweenRetries;
    }
    if (maxPauseBetweenRetries != null) {
      json['maxPauseBetweenRetries'] = maxPauseBetweenRetries;
    }
    return json;
  }

  @override
  String toString() {
    return 'ProcessingStrategy{type: $type, retries: $retries, failurePercentage: $failurePercentage, pauseBetweenRetries: $pauseBetweenRetries, maxPauseBetweenRetries: $maxPauseBetweenRetries}';
  }
}

class Queue extends AdditionalInfoBased<QueueId> with HasName, HasTenantId {
  TenantId? tenantId;
  String name;
  String topic;
  int? pollInterval;
  int? partitions;
  bool? consumerPerPartition;
  int? packProcessingTimeout;
  SubmitStrategy submitStrategy;
  ProcessingStrategy processingStrategy;

  Queue(this.name, this.topic, this.submitStrategy, this.processingStrategy);

  Queue.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        name = json['name'],
        topic = json['topic'],
        pollInterval = json['pollInterval'],
        partitions = json['partitions'],
        consumerPerPartition = json['consumerPerPartition'],
        packProcessingTimeout = json['packProcessingTimeout'],
        submitStrategy = SubmitStrategy.fromJson(json['submitStrategy']),
        processingStrategy =
            ProcessingStrategy.fromJson(json['processingStrategy']),
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['name'] = name;
    json['topic'] = topic;
    if (pollInterval != null) {
      json['pollInterval'] = pollInterval;
    }
    if (partitions != null) {
      json['partitions'] = partitions;
    }
    if (consumerPerPartition != null) {
      json['consumerPerPartition'] = consumerPerPartition;
    }
    if (packProcessingTimeout != null) {
      json['packProcessingTimeout'] = packProcessingTimeout;
    }
    json['submitStrategy'] = submitStrategy.toJson();
    json['processingStrategy'] = processingStrategy.toJson();
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'Queue{${additionalInfoBasedString('tenantId: $tenantId, name: $name, topic: $topic, pollInterval: $pollInterval, partitions: $partitions, '
        'consumerPerPartition: $consumerPerPartition, packProcessingTimeout: $packProcessingTimeout, submitStrategy: $submitStrategy, processingStrategy: $processingStrategy')}}';
  }
}
