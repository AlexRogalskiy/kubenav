//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCertificatesV1CertificateSigningRequestCondition {
  /// Returns a new [IoK8sApiCertificatesV1CertificateSigningRequestCondition] instance.
  IoK8sApiCertificatesV1CertificateSigningRequestCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastTransitionTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastUpdateTime;

  /// message contains a human readable message with details about the request state
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// reason indicates a brief reason for the request state
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// status of the condition, one of True, False, Unknown. Approved, Denied, and Failed conditions may not be \"False\" or \"Unknown\".
  String status;

  /// type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.  Possible enum values:  - `\"Approved\"` Approved indicates the request was approved and should be issued by the signer.  - `\"Denied\"` Denied indicates the request was denied and should not be issued by the signer.  - `\"Failed\"` Failed indicates the signer failed to issue the certificate.
  IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCertificatesV1CertificateSigningRequestCondition &&
          other.lastTransitionTime == lastTransitionTime &&
          other.lastUpdateTime == lastUpdateTime &&
          other.message == message &&
          other.reason == reason &&
          other.status == status &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lastTransitionTime == null ? 0 : lastTransitionTime!.hashCode) +
      (lastUpdateTime == null ? 0 : lastUpdateTime!.hashCode) +
      (message == null ? 0 : message!.hashCode) +
      (reason == null ? 0 : reason!.hashCode) +
      (status.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'IoK8sApiCertificatesV1CertificateSigningRequestCondition[lastTransitionTime=$lastTransitionTime, lastUpdateTime=$lastUpdateTime, message=$message, reason=$reason, status=$status, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lastTransitionTime != null) {
      json[r'lastTransitionTime'] =
          lastTransitionTime!.toUtc().toIso8601String();
    }
    if (lastUpdateTime != null) {
      json[r'lastUpdateTime'] = lastUpdateTime!.toUtc().toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (reason != null) {
      json[r'reason'] = reason;
    }
    json[r'status'] = status;
    json[r'type'] = type;
    return json;
  }

  /// Returns a new [IoK8sApiCertificatesV1CertificateSigningRequestCondition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCertificatesV1CertificateSigningRequestCondition? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCertificatesV1CertificateSigningRequestCondition[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCertificatesV1CertificateSigningRequestCondition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCertificatesV1CertificateSigningRequestCondition(
        lastTransitionTime: mapDateTime(json, r'lastTransitionTime', ''),
        lastUpdateTime: mapDateTime(json, r'lastUpdateTime', ''),
        message: mapValueOfType<String>(json, r'message'),
        reason: mapValueOfType<String>(json, r'reason'),
        status: mapValueOfType<String>(json, r'status')!,
        type: IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
            .fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<IoK8sApiCertificatesV1CertificateSigningRequestCondition>?
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCertificatesV1CertificateSigningRequestCondition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoK8sApiCertificatesV1CertificateSigningRequestCondition.fromJson(
                row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCertificatesV1CertificateSigningRequestCondition>
      mapFromJson(dynamic json) {
    final map =
        <String, IoK8sApiCertificatesV1CertificateSigningRequestCondition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoK8sApiCertificatesV1CertificateSigningRequestCondition.fromJson(
                entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCertificatesV1CertificateSigningRequestCondition-objects as value to a dart map
  static Map<String,
          List<IoK8sApiCertificatesV1CertificateSigningRequestCondition>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String,
        List<IoK8sApiCertificatesV1CertificateSigningRequestCondition>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCertificatesV1CertificateSigningRequestCondition
            .listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'type',
  };
}

/// type of the condition. Known conditions are \"Approved\", \"Denied\", and \"Failed\".  An \"Approved\" condition is added via the /approval subresource, indicating the request was approved and should be issued by the signer.  A \"Denied\" condition is added via the /approval subresource, indicating the request was denied and should not be issued by the signer.  A \"Failed\" condition is added via the /status subresource, indicating the signer failed to issue the certificate.  Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed conditions cannot be removed once added.  Only one condition of a given type is allowed.  Possible enum values:  - `\"Approved\"` Approved indicates the request was approved and should be issued by the signer.  - `\"Denied\"` Denied indicates the request was denied and should not be issued by the signer.  - `\"Failed\"` Failed indicates the signer failed to issue the certificate.
class IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum._(
      this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const approved =
      IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum._(
          r'Approved');
  static const denied =
      IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum._(
          r'Denied');
  static const failed =
      IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum._(
          r'Failed');

  /// List of all possible values in this [enum][IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum].
  static const values =
      <IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum>[
    approved,
    denied,
    failed,
  ];

  static IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum? fromJson(
          dynamic value) =>
      IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer()
          .decode(value);

  static List<IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum>?
      listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result =
        <IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
                .fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum] to String,
/// and [decode] dynamic data back to [IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum].
class IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer {
  factory IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer() =>
      _instance ??=
          const IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer
              ._();

  const IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer._();

  String encode(
          IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
              data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum? decode(
      dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Approved':
          return IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
              .approved;
        case r'Denied':
          return IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
              .denied;
        case r'Failed':
          return IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnum
              .failed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer] instance.
  static IoK8sApiCertificatesV1CertificateSigningRequestConditionTypeEnumTypeTransformer?
      _instance;
}